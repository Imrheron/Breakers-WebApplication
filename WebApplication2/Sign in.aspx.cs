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
    public partial class Sign_in : System.Web.UI.Page
    {
        string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["abc"] == "samspen")
            {
                buttonprofile.Visible = true;
                HyperLink1.Visible = false;
                Button3.Visible = true;
                Practice.Visible = true;
            }
            else
            {
                buttonprofile.Visible = false;
                HyperLink1.Visible = true;
                Button3.Visible = false;
                Practice.Visible = false;
            }
        }
        protected void Practice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/App.aspx");
        }

        protected void buttonprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifyUser.aspx");
        }
        protected void Signout_click(object sender, EventArgs e)
        {
            Session["abc"] = "signout";
            buttonprofile.Visible = false;
            HyperLink1.Visible = true;
            Button1.Visible = false;
            Practice.Visible = false;

        }
        protected void Button2_Click(object sender, EventArgs e) //sign up code
        {
            {

                if (txtUsername.Text == "" || txtEmail.Text == "" || txtPassword.Text == "" || txtPassword.Text != txtpasswordconfirm.Text)
                {
                    Response.Redirect("~/Sign in.aspx");
                    Someonedidntinputalltheirvalues.Visible = true;
                }
                else
                {
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
                    }
                }
            }
            void Clear()
            {
                txtUsername.Text = txtEmail.Text = txtPassword.Text = "";
            }

        }
        protected void Button1_Click(object sender, EventArgs e) //Sign in code
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;");
            SqlConnection con = new SqlConnection(connectionstring);
            SqlDataAdapter sqa = new SqlDataAdapter("Select UserID From tblUser where Email = '" + txtEmailsignin.Text + "' and Password = '" + txtPasswordsignin.Text + "'", con);
            System.Data.DataTable dtbl = new System.Data.DataTable();
            sqa.Fill(dtbl);
            if (dtbl.Rows.Count > 0)
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserID", (HField1.Value == "" ? 0 : Convert.ToInt32(HField1.Value)));
                Session["abc"] = "samspen";
                Session["GetEmail"] = txtEmailsignin.Text;
                Session["GetPassword"] = txtPasswordsignin.Text;
                Response.Redirect("~/Homepage.aspx");
            }
            else
            {
                Someonedidntinputalltheirvalues.Visible = true;
                Response.Redirect("~/Sign in.aspx");
            }
        }
    }
}