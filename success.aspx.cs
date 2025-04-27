using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_12_Project
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Test to see if human logged in
            if (Session["user"] != null)
            {
                //welcome message
                lblMsg2.Text = Session["user"].ToString();
            }
            else
            {
                //human not logged in
                Response.Redirect("default.aspx");
            }

        }

        protected void btnLogoff_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["email"] = null;
            Response.Redirect("read.aspx");
        }
    }
}