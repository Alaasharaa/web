using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soha
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fullname = string.Format("{0}", Request.Form["fullname"]);
            string birth = string.Format("{0}", Request.Form["birth"]);
            string email = string.Format("{0}", Request.Form["email"]);
            string  gender= string.Format("{0}", Request.Form["gender"]);
            string  language= string.Format("{0}", Request.Form["language"]);
            string  level= string.Format("{0}", Request.Form["level"]);
            string  fathername= string.Format("{0}", Request.Form["fathername"]);
            string  mothername= string.Format("{0}", Request.Form["mothername"]);
            string  supervisor= string.Format("{0}", Request.Form["supervisor"]);
            string  phone = string.Format("{0}", Request.Form["phone"]);
            string  password = string.Format("{0}", Request.Form["password"]);
            web_classes web = new web_classes();
            web.regKid(fullname, birth, email, gender, language, level, fathername, mothername, supervisor, phone, password);
            Session["username"] = email;
            Response.Redirect("courses.aspx");
        }
    }
}