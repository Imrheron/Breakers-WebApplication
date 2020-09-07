using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";

        

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

        protected void Button1_Click(object sender, EventArgs e)
        {
                Response.Redirect("~/App.aspx");
           
        }
        protected void Openapp_click(object sender, EventArgs e)
        {
            Response.Redirect("~/App.aspx");
        }
        protected void Signout_click(object sender, EventArgs e)
        {
            Session["abc"] = "signout";
            buttonprofile.Visible = false;
            HyperLink1.Visible = true;
            Button1.Visible = false;
            Practice.Visible = false;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Videos.aspx");
        }
        public void AddUser_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "" || txtEmail.Text == "" || txtPassword.Text == "")
                Response.Redirect("~/WebForm1.aspx");
            else {
                using (SqlConnection sqlCon = new SqlConnection(connectionstring))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Session["abc"] = "@UserID";
                    Response.Redirect("~/Signedup.aspx");
                    Clear();
                    
                }
            }
        }
        void Clear()
        {
            txtUsername.Text = txtEmail.Text = txtPassword.Text = "";
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
