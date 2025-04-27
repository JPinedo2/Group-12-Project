using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Database controls
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;

namespace Group_12_Project
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //declare sql connection
            SqlConnection regCon = new SqlConnection(SqlDataSource2.ConnectionString);

            //declare command
            SqlCommand regCommand = new SqlCommand(SqlDataSource2.InsertCommand);
            regCommand.Connection = regCon;

            regCommand.Parameters.AddWithValue("@Email", txtREmail.Text);
            regCommand.Parameters.AddWithValue("@Password", txtRPass.Text);
            regCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            regCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            regCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);

            //open the connection
            regCon.Open();

            //insert command
            regCommand.ExecuteNonQuery();

            //close the connection
            regCon.Close();

            //send to a page
            Response.Redirect("read.aspx");


        }
    }
}