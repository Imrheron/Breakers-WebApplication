using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["abc"] == "samspen")
            {
                buttonprofile.Visible = true;
                HyperLink1.Visible = false;
                Button1.Visible = true;
                Practice.Visible = true;
            }
            else
            {
                buttonprofile.Visible = false;
                HyperLink1.Visible = true;
                Button1.Visible = false;
                Practice.Visible = false;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Beginnerapp.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Intermediateapp.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Proapp.aspx");
        }
        protected void Signout_click(object sender, EventArgs e)
        {
            Session["abc"] = "signout";
            buttonprofile.Visible = false;
            HyperLink1.Visible = true;
            Button1.Visible = false;
            Practice.Visible = false;

        }
        protected void Practice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/App.aspx");
        }

        protected void buttonprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifyUser.aspx");
        }
    }
}