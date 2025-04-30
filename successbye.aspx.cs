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
    public partial class successbye : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear all session variables
            Session.Clear();
            Session.Abandon();
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            // Redirect back to the home page
            Response.Redirect("default.aspx");
        }
    }
}