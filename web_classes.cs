using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
namespace soha
{
    public class web_classes
    {
        public void regKid(string fullname,string birth ,string email,string gender , string language , string level , string fathername,string mothername,string supervisor ,string phone ,string password)
        {
            connection con = new connection();
            con.connect.Open();
            string sql = "INSERT INTO kids(fullname,birth,email,gender,language,level,fathername,mothername,supervisor,phone,password) " +
            "VALUES('" + fullname + "','" + birth + "','" + email + "','" + gender + "','" + language + "','"+level+"','"+fathername+"','"+mothername+"','"+supervisor+"','"+phone+"','"+password+"')";
            using (var cmd = new SqlCommand(sql, con.connect))
            {
                cmd.ExecuteNonQuery();

            }
            con.connect.Close();

        }

        public bool login_check(string email, string password)
        {
            getQuery query = new getQuery();
            string sql = "SELECT * FROM kids WHERE email='" + email + "' AND password='" + password + "'";
            if (query.get(sql).Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;

            }

        }
        public bool checkAdmin(string admin_name, string password)
        {
            getQuery query = new getQuery();
            string sql = "SELECT * FROM admins WHERE name='" + admin_name + "' AND password='" + password + "'";
            if (query.get(sql).Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;

            }

        }
        public IDictionary<string, string> getInfo(string Email)
        {
            getQuery query = new getQuery();
            string sql = "SELECT * FROM students WHERE email='" + Email + "'";
            DataTable dt = query.get(sql);
            string firstname = dt.Rows[0]["firstname"].ToString();
            string lastname = dt.Rows[0]["lastname"].ToString();
            string birth = dt.Rows[0]["birth"].ToString();
            string email = dt.Rows[0]["email"].ToString();
            IDictionary<string, string> dict = new Dictionary<string, string>();
            dict["firstname"] = firstname;
            dict["lastname"] = lastname;
            dict["birth"] = birth;
            dict["email"] = email;
            return dict;
        }

    }
    public class connection
    {
        private SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\education.mdf;Integrated Security=True");
        public SqlConnection connect
        {
            get { return sqlcon; }
            set { sqlcon = value; }
        }

    }
}