using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{

public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["abc"] == "samspen")
            {
                Label2.Visible = true;
                Label1.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Button3.Visible = false; 
                profile.Visible = true;
                HyperLink1.Visible = false;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sign in.aspx"); 
        }

    }
}