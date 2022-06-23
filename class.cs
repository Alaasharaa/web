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
    public class data
    {
        public DataSet getData(string sql){
            connection con = new connection();
            SqlCommand cmd = new SqlCommand(sql, con.connect); 
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable getDataT(string sql)
        {
            connection con = new connection();
            SqlCommand cmd = new SqlCommand(sql, con.connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            return ds;
        }
    }
}