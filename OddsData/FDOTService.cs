using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.IO;
using OddsData;
using OddsProperties;
using AutoMapper;

namespace OddsData
{
    public class FDOTService
    {
        public void InsertLinks(XmlDocument doc)
        {
            try
            {
                StringReader str = new StringReader(doc.OuterXml);
                XmlTextReader xmlreader = new XmlTextReader(str);
                SqlParameter[] arrParam = { new SqlParameter("@League_XML", xmlreader), new SqlParameter("@mode", "Insert") };

                using (SqlConnection objConn = new SqlConnection(OddsConnection.GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand("sp_Leagues", objConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddRange(arrParam);
                    cmd.CommandTimeout = 500;
                    objConn.Open();
                    cmd.ExecuteNonQuery();
                    objConn.Close();
                }
            }
            catch (Exception ex)
            {
                ErrorLog(ex.ToString());
            }
        }
        public void InsertLinks(List<UrlModel> urls)
        {
            foreach (var url in urls)
            {
                try
                {
                    using (SqlConnection objConn = new SqlConnection(OddsConnection.GetConnectionString()))
                    {
                        SqlCommand cmd = new SqlCommand("insert into CrawledData(PageUrl,FullUrl,IsLinkCrawled,IsDataCrawled,IsInDomain,Header,Footer,HtmlContent) values(@PageUrl,@FullUrl,@IsLinkCrawled,@IsDataCrawled,@IsInDomain,@Header,@Footer,@HtmlContent)", objConn);
                        cmd.Parameters.AddWithValue("@PageUrl", url.PageUrl);
                        cmd.Parameters.AddWithValue("@FullUrl", url.FullUrl);
                        cmd.Parameters.AddWithValue("@IsLinkCrawled", false);
                        cmd.Parameters.AddWithValue("@IsDataCrawled", false);
                        cmd.Parameters.AddWithValue("@IsInDomain", url.IsInDomain);
                        cmd.Parameters.AddWithValue("@Header", "");
                        cmd.Parameters.AddWithValue("@Footer", "");
                        cmd.Parameters.AddWithValue("@HtmlContent", "");
                        cmd.CommandTimeout = 500;
                        objConn.Open();
                        cmd.ExecuteNonQuery();
                        objConn.Close();
                    }
                }
                catch (Exception ex)
                {
                    ErrorLog(ex.ToString());
                }
            }
        }

        public int UpdateHtmlData(UrlModel model)
        {
            try
            {
                SFDefault_201712100926Entities context = new SFDefault_201712100926Entities();
                var data = context.CrawledDatas.Where(st => st.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.HtmlContent = model.HtmlContent;
                    data.Header = model.Header;
                    data.Footer = model.Footer;

                    context.Entry(data).State = EntityState.Modified;
                    int status = context.SaveChanges();
                    return status;
                }
                return 0;
            }
            catch(Exception ex)
            {
                return 0;
            }
        }

        public List<UrlModel> GetUrlForLinkCrawl()
        {
            SFDefault_201712100926Entities context = new SFDefault_201712100926Entities();
            var data = context.CrawledDatas.Where(st => st.IsInDomain == true && st.IsLinkCrawled == false).ToList();
            var urlModel = Mapper.Map<List<CrawledData>, List<UrlModel>>(data);
            return urlModel;
            //using (SqlConnection objConn = new SqlConnection(OddsConnection.GetConnectionString()))
            //{
            //    SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM CrawledData WHERE IsLinkCrawled = 0 AND IsInDomain = 1", objConn);
            //    DataSet ds = new DataSet();
            //    cmd.Fill(ds);
            //    if (ds.Tables.Count > 0)
            //    {
            //        foreach(var row in ds.Tables[0].Rows)
            //        {

            //        }
            //    }
            //}
        }

        public int IsLinkCrawlRemain()
        {
            SFDefault_201712100926Entities context = new SFDefault_201712100926Entities();
            var data = context.CrawledDatas.Where(st => st.IsInDomain == true && st.IsLinkCrawled == false).ToList();
            if (data != null)
            {
                return data.Count();
            }
            return 0;
        }

        public int UpdateLinkCrawled(UrlModel model)
        {
            SFDefault_201712100926Entities context = new SFDefault_201712100926Entities();
            var data = context.CrawledDatas.Where(st => st.Id == model.Id).FirstOrDefault();
            if (data != null)
            {
                data.IsLinkCrawled = true;

                context.Entry(data).State = EntityState.Modified;
                int status = context.SaveChanges();
                return status;
            }
            return 0;
        }
        public int UpdateHtmlContentCrawled(UrlModel model)
        {
            SFDefault_201712100926Entities context = new SFDefault_201712100926Entities();
            var data = context.CrawledDatas.Where(st => st.Id == model.Id).FirstOrDefault();
            if (data != null)
            {
                data.IsDataCrawled = true;

                context.Entry(data).State = EntityState.Modified;
                int status = context.SaveChanges();
                return status;
            }
            return 0;
        }
        public void ErrorLog(string content)
        { //set up a filestream
            try
            {
                //set up a filestream
                FileStream fs = new FileStream(@"c:\OddsService\ScheduledService.txt", FileMode.OpenOrCreate, FileAccess.Write);

                //set up a streamwriter for adding text
                StreamWriter sw = new StreamWriter(fs);

                //find the end of the underlying filestream
                sw.BaseStream.Seek(0, SeekOrigin.End);

                //add the text
                sw.WriteLine(content + " DateTime: " + DateTime.Now.ToString());
                //add the text to the underlying filestream
                sw.Flush();
                //close the writer
                sw.Close();
                fs.Dispose();
            }
            catch (Exception ex)
            {

            }
        }
    }
}
