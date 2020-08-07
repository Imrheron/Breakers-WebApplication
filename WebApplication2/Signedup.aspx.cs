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
    public partial class Signedup : System.Web.UI.Page
        {
        SqlConnection sqlcon = new SqlConnection(@"Data Source = tpisql01.avcol.school.nz; Initial Catalog = breakersdatabasekp; Integrated Security = True;");
        public void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["abc"] == "samspen")
            {
                profile.Visible = true;
                HyperLink1.Visible = false;
            }
        }

        protected void Button1_click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifyUser.aspx");

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate", sqlcon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            //sqlCmd.Parameters.AddWithValue("@UserID", (hfUserID.Value == "" ? 0 : Convert.ToInt32(hfUserID.Value)));
            sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            //string UserID = hfUserID.Value;
            //Clear();
           // if (hfUserID.Value == "")
                //lblsuccessmessage.Text = "Saved Successfully";
            //else
                //lblsuccessmessage.Text = "Updated Successfully";
            FillGridView();
        }
        void FillGridView()
        {

            if (sqlcon.State == ConnectionState.Closed)
                sqlcon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewAll", sqlcon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlcon.Close();
           // gvUser.DataSource = dtbl;
            //gvUser.DataBind();
        }
    }
}