using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Beginnerapp : System.Web.UI.Page
    {
        //string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  Session["beginner"] = "beginner";
              using (SqlConnection sqlCon = new SqlConnection(connectionstring))
              {
                  sqlCon.Open();
                  SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                  sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                  sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                  sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                  sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                  sqlCmd.ExecuteNonQuery();
                  Session["abc"] = "samspen";
                  Session["GetEmail"] = txtEmail.Text;
                  Session["GetPassword"] = txtPassword.Text;

                  Response.Redirect("~/Homepage.aspx");
                  Clear(); 
              }*/
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