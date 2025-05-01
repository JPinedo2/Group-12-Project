using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Libraries for database operations
using System.Data;
using System.Data.Sql;
using System.EnterpriseServices;

namespace Group_12_Project
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the session is not set, redirect to login page
            if (Session["email"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Confirm that the logged-in user's email matches the one entered in the textbox
            if (Session["email"].ToString() == txtEmail.Text)
            {
                // Establish a new connection using the SqlDataSource
                SqlConnection dcon = new SqlConnection(SqlDataSource5.ConnectionString);

                // Prepare the delete command from the SqlDataSource
                SqlCommand deleteDonations = new SqlCommand("DELETE FROM Donations WHERE Email = @Email", dcon);
                SqlCommand dcommand = new SqlCommand(SqlDataSource5.DeleteCommand, dcon);
                

                // Assign connection to command object
                dcommand.Connection = dcon;

                // Add parameter value for deletion
                deleteDonations.Parameters.AddWithValue("@Email", Session["email"].ToString());
                dcommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                // Open connection and execute deletion
                dcon.Open();
                deleteDonations.ExecuteNonQuery();
                dcommand.ExecuteNonQuery();
                dcon.Close();

                // Redirect to goodbye page
                Response.Redirect("successbye.aspx");
            }
            else
            {
                // Error message
                lblMessage.Text = "This email does not exist.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}