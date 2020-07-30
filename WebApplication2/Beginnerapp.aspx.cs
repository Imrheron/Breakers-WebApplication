using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Beginnerapp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_click(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Label2.Visible = false;
            Label1.Visible = true;
            Image1.Visible = true;
            Label3.Visible = true;
            Image2.Visible = true;
        }
    }
}