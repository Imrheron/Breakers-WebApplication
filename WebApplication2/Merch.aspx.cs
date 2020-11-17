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
    public partial class WebForm6 : System.Web.UI.Page
    {
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
            if ((string)Session["Merch"] == "Admin")
            {
                Name.Visible = true;
                Price.Visible = true;
                Image_URL.Visible = true;
                Stock_Quantity.Visible = true;
                ID.Visible = true;
                Merch_ADD.Visible = true;
                Product_ID.Visible = true;
                Product_Image.Visible = true;
                Product_Name.Visible = true;
                Product_Price.Visible = true;
                Product_Quantity.Visible = true;
            }

        }

        

        protected void Merch_ADD_Click(object sender, EventArgs e) //Add New Merch code
        {
            string connectionstring = @"Data Source = tpisql01.avcol.school.nz; Initial Catalog = Gerrandatabase; Integrated Security = True;";
            using (SqlConnection sqlCon = new SqlConnection(connectionstring))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("AddMerch", sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Product_ID", ID.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Product_name", Name.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@List_Price", Price.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Product_Image_URL", Image_URL.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Stock_Quantity", Stock_Quantity.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Response.Redirect("~/Merch.aspx");
                //Response.Redirect("~/Homepage.aspx");
            }
        }
    
         


        protected void Signout_click(object sender, EventArgs e)
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