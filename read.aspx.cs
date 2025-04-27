using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add database class libraries


namespace Group_12_Project
{
    public partial class read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //declare variables for credentials
            string sUID = "";
            string sPass = "";
            string sUser = "";

            //Declare a sqldatareader to store query results
            SqlDataReader myReader;

            //Declare sqlconnection to connect to database
            SqlConnection myCnxn = new SqlConnection(SqlDataSource1.ConnectionString);

            //Declare sql command
            SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

            //set connection
            myCommand.Connection = myCnxn;

            //set parameter
            //populate email
            myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            myCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

            //Open database connection
            myCnxn.Open();

            //execute command
            myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            //populate the reader, assign values to variables, then compare values from database to text boxes.
            while (myReader.Read())
            {
                sUID = myReader.GetString(0);
                sPass = myReader.GetString(1);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }
            if (txtEmail.Text == sUID && txtPassword.Text == sPass)
            {
                //if credential match, set session user
                Session["user"] = sUser;
                Session["email"] = sUID;
                Response.Redirect("success.aspx");
            }
            else
            {
                //display an error
                lblMsg.Text = "Invalid User Name or Password";
            }
        }
    }
}