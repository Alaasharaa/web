using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace soha
{
    public class getQuery
    {
        public DataTable get(string sql)
        {
            connection con = new connection();
            SqlCommand cmd = new SqlCommand(sql, con.connect);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.connect.Open();
            cmd.ExecuteNonQuery();
            return dt;
        }
    }
}