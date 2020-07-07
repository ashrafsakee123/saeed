<%@ WebHandler Language="C#" Class="FileHandler" %>


using System;

using System.Configuration;

using System.Web;

using System.IO;

using System.Data;

using System.Data.SqlClient;

public class FileHandler : IHttpHandler {
    string table;
    public void ProcessRequest(HttpContext context)
    {
        table = context.Request["t"];
        string x = context.Request["id"];
        if (context.Request["id"] != null)
        {
            try
            {
                int PID = Convert.ToInt32(context.Request["id"]);


                MemoryStream strm = ShowImage(PID);

                context.Response.Clear();
                //    MemoryStream ms = new MemoryStream(buffer);
                string mimeType = MimeMapping.GetMimeMapping(context.Request["n"]);
                context.Response.ContentType = mimeType;// "application/pdf";
                context.Response.AddHeader("content-disposition", "attachment;filename="+context.Request["n"]);

                context.Response.Buffer = true;
                strm.WriteTo(context.Response.OutputStream);
                context.Response.End();
            }
            catch 
            { }
        }

    }


    public MemoryStream ShowImage(int PID)
    {

        string conn = ConfigurationManager.ConnectionStrings["SAEEDFiles"].ConnectionString;

        SqlConnection connection = new SqlConnection(conn);

        string sql = "SELECT FileData FROM " + table + " WHERE ID = @ID";

        SqlCommand cmd = new SqlCommand(sql, connection);

        cmd.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@ID", PID );

        connection.Open();

        object img = cmd.ExecuteScalar();

        try
        {

            return new MemoryStream((byte[])img);

        }

        catch
        {

            return null;

        }

        finally
        {

            connection.Close();

        }

    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}