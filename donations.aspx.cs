using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_12_Project
{
    public partial class donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            int donationsID = rnd.Next(100000, 999999); // Generates a 6-digit random number

            decimal amount = Convert.ToDecimal(txtAmount.Text);

            //declare sql connection
            SqlConnection donCon = new SqlConnection(SqlDataSource5.ConnectionString);

            //declare command
            SqlCommand donCommand = new SqlCommand(SqlDataSource5.InsertCommand);
            donCommand.Connection = donCon;

            donCommand.Parameters.AddWithValue("@DonationsID", donationsID);
            donCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            donCommand.Parameters.AddWithValue("@DonAmount", amount);


            //open the connection
            donCon.Open();

            //insert command
            donCommand.ExecuteNonQuery();

            //close the connection
            donCon.Close();

            //send to a page
            Response.Redirect("thankYou.aspx");
        }
    }
}