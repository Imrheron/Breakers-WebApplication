﻿using System;
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
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                Emaillbl.Text = (string)Session["GetEmail"];
                Passlbl.Text = (string)Session["GetPassword"];
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
                txtpasswordconfirm.Text = dtbl.Rows[0][3].ToString();
                
            }

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                sqlcon.Open();
                if (txtusername.Text == "" || txtemail.Text == "" || txtpassword.Text == "" || txtpasswordconfirm.Text == "")
                {
                    lblerrormessage.Visible = true;
                    lblerrormessage.Text = "Not Enough Credentials";
                }
                else
                {
                    SqlCommand sqlCmd = new SqlCommand("UserCreateOrUpdate", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", UserIDnumber.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    //Response.Redirect("~/Homepage.aspx");
                    sqlcon.Close();
                }
            }


        }
    }
}