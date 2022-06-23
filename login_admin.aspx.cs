using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soha
{
    public partial class login_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string password = string.Format("{0}", Request.Form["password"]);
            string email = string.Format("{0}", Request.Form["email"]);
            web_classes web = new web_classes();
            if (web.checkAdmin(email, password))
            {
                Session["adminname"] = email;
                Response.Redirect("admin.aspx");
            }
        }
    }
}