using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Intermediateapp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Image1.Visible = true;
            Start.Visible = false;
            Label2.Visible = false;
            Button2.Visible = true;
            Points.Visible = true;
            Format.Visible = true; 
        }

        protected void Button2_click(object sender, EventArgs e)
        {
            if (Label8.Visible == true)
            {

                Label9.Visible = true;

            }
            if (Label7.Visible == true)
            {

                Label8.Visible = true;

            }
            if (Label6.Visible == true)
            {
                Label7.Visible = true;

            }

            if (Label4.Visible == true)
            {
                Label5.Visible = true;
                Label6.Visible = true;

            }
            if (Label3.Visible == true)
            {
                Label4.Visible = true;
                Image3.Visible = true;

            }

            if (Label1.Visible == true)
            {
                Label3.Visible = true;
                Image2.Visible = true;

            }
        }
    }
}