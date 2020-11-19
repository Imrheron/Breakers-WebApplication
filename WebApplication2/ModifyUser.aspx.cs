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
    public partial class ModifyUser : System.Web.UI.Page
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

            Emaillbl.Text = (string)Session["GetEmail"];
            Passlbl.Text = (string)Session["GetPassword"];
            if (!IsPostBack)
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                {

                    sqlcon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("GetUserID", sqlcon);
                    sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                    sqlDa.SelectCommand.Parameters.AddWithValue("@Email", Emaillbl.Text);
                    sqlDa.SelectCommand.Parameters.AddWithValue("@Password", Passlbl.Text);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    UserIDnumber.Text = dtbl.Rows[0][0].ToString();
                    txtusername.Text = dtbl.Rows[0][1].ToString();
                    txtemail.Text = dtbl.Rows[0][2].ToString();
                    txtpassword.Text = dtbl.Rows[0][3].ToString();

                }
            }

            lbluserbox.Text = txtusername.Text;
            lblpassbox.Text = txtpassword.Text;
            lblemailbox.Text = txtemail.Text;
        }
        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            lbluserbox.Text = txtusername.Text;
        }
        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {
            lblpassbox.Text = txtpassword.Text;
        }
        protected void txtemail_TextChanged(object sender, EventArgs e)
        {
            lblemailbox.Text = txtemail.Text;
        }
        protected void Signout_click(object sender, EventArgs e)
        {
            Session["abc"] = "signout";
            buttonprofile.Visible = false;
            HyperLink1.Visible = true;
            Button1.Visible = false;
            Practice.Visible = false;

        }
        protected void buttonprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifyUser.aspx");
        }
        protected void Practice_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/App.aspx");
        }
        protected void Save_Click(object sender, EventArgs e) //Updates the user's profle if they have inputted all their variables, and if the variables meet the requirements
        {
            if (txtusername.Text == "" || txtemail.Text == "" || txtpassword.Text == "" || txtpasswordconfirm.Text == "" || txtpassword.Text != txtpasswordconfirm.Text)
            {
                lblerrormessage.Visible = true;
                lblerrormessage.Text = "Please enter text in all fields";
            }
            else if (txtpassword.Text.Length < 8)
            {

                lblerrormessage.Visible = true; //Validates the User's password to make sure it is of relative strength
                lblerrormessage.Text = "Your password must be greater than 8 characters";
            }
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                {
                    sqlcon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", UserIDnumber.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", lbluserbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", lblemailbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", lblpassbox.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Session["GetEmail"] = txtemail.Text;
                    Session["GetPassword"] = txtpassword.Text;
                    Response.Redirect("~/Homepage.aspx");
                }
            }
        }
        protected void btndelete_Click(object sender, EventArgs e) //deletes profile using the sql UserDeleteByID query
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
                if (sqlcon.State == ConnectionState.Closed)
                {
                    sqlcon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserDeleteByID", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", UserIDnumber.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    sqlcon.Close();
                    Session["abc"] = "signout";
                    buttonprofile.Visible = false;
                    HyperLink1.Visible = true;
                    Button1.Visible = false;
                    Practice.Visible = false;
                    Response.Redirect("~/Homepage.aspx");
                   
                }
        }

    }
}
