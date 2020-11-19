using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {

    
    
        string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";
        
        

        protected void Page_Load(object sender, EventArgs e)
        {
                if ((string)Session["abc"] == "samspen") /*if logged in, make profile, and application buttons visible*/
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
            if ((string)Session["abc"] == "samspen")
            {
                Response.Redirect("~/App.aspx");
            }
            else
            {
                Response.Redirect("~/Sign in.aspx");
            }
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Videos.aspx");
        }
        public void AddUser_Click(object sender, EventArgs e) //add new user to user database
        {

                if (txtUsername.Text == "" || txtEmail.Text == "" || txtPassword.Text == "")
                {
                    Clear();
                    Someonedidntinputalltheirvalues.Text = "Please fill in all fields";
                    Someonedidntinputalltheirvalues.Visible = true; //Checks if the user has inputted values in all textboxes
                }
                else if (txtPassword.Text.Length < 8) 
                {
                    Someonedidntinputalltheirvalues.Visible = true; //Validates the User's password to make sure it is of relative strength
                    Someonedidntinputalltheirvalues.Text = "Your password must be greater than 8 characters";
                }

                else 
                {

                    using (SqlConnection sqlCon = new SqlConnection(connectionstring))
                    {
                        sqlCon.Open(); //open a connection with the SQL database
                        SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon); //defines new sql command
                        sqlCmd.CommandType = System.Data.CommandType.StoredProcedure; //defines the command as a stored procedure
                        sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim()); //defines the username as the value contained within 
                        sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        Session["abc"] = "samspen"; //creates session variables to carry over to other webforms
                        Session["GetEmail"] = txtEmail.Text;
                        Session["GetPassword"] = txtPassword.Text;

                        Response.Redirect("~/Homepage.aspx");

                        Clear();
                    }
                }
           // } else { }
        }
        void Clear()
        {
            txtUsername.Text = txtEmail.Text = txtPassword.Text = "";
        }
        protected void Signout_click(object sender, EventArgs e) //changes the session variable to sign the user out
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
