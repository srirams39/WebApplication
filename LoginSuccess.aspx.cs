using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class LoginSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {   //not logged in
                Response.Redirect("Login.aspx");
            }
            else
            {
                //logged in 
                //Use value in the session variable for label text.
                lbluser.Text = Session["login"].ToString();
            }
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }
    }
}