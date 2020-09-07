using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Modify UserUpdated.aspx");
        }

        protected void Signout_click(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {

        }
    }
}