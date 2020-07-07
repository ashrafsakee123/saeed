<%@ WebHandler Language="C#" Class="PicHandler" %>


using System;

using System.Configuration;

using System.Web;

using System.IO;

using System.Data;

using System.Data.SqlClient;

public class PicHandler : IHttpHandler {
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
               
                context.Response.ContentType = "image/jpeg";

                Stream strm = ShowImage(PID);

                byte[] buffer = new byte[4096];

                int byteSeq = strm.Read(buffer, 0, 4096);



                while (byteSeq > 0)
                {

                    context.Response.OutputStream.Write(buffer, 0, byteSeq);

                    byteSeq = strm.Read(buffer, 0, 4096);

                }

                context.Response.BinaryWrite(buffer);
                context.Response.End();
            }
            catch 
            { }
        }

    }


    public Stream ShowImage(int PID)
    {

        string conn = ConfigurationManager.ConnectionStrings["SAEEDBasic"].ConnectionString;

        SqlConnection connection = new SqlConnection(conn);

        string sql = "SELECT Avatar FROM " + table + " WHERE ID = @ID";

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