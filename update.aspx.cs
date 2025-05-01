using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//database controls
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.Diagnostics.Eventing.Reader;

namespace Read
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //asking for information before any input from user
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    //declare a datareader to store query results
                    SqlDataReader myReader;

                    //declare connection for database
                    SqlConnection myConn = new SqlConnection(SqlDataSource1.ConnectionString);

                    //declare command
                    SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

                    //set connection
                    myCommand.Connection = myConn;

                    //set parameter
                    //populate email
                    //AddWithValue send the email session variable
                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());
                    myCommand.Parameters.AddWithValue("@Password", txtPass.Text);

                    //open database connection
                    myConn.Open();

                    //execute command
                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);


                    //the while command happens after the execute command
                    while (myReader.Read())
                    {
                        lblEmail.Text = myReader.GetString(0);
                        lblPass.Text = myReader.GetString(1);
                        lblFName.Text = myReader.GetString(2);
                        lblLName.Text = myReader.GetString(3);
                        lblYOB.Text = myReader.GetInt32(4).ToString();

                    }
                    //close the connection
                    myConn.Close();

                    //turn off all controls. only want to show them at the requested time
                    txtPass.Visible = false;
                    txtPassC.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtYOB.Visible = false;

                    //turn off validation control
                    //rfvPassword.Visible = false;
                    //rfvFName.Visible = false;
                    //rfvLName.Visible = false;
                    //rfvYOB.Visible = false;
                    //cvPass.Visible = false;

                    //hide the update labels
                    lblPass.Visible = false;
                    lblNewValue.Visible = false;
                    lblConfirm.Visible = false;
                    lblFName.Visible = false;
                    lblLName.Visible = false;
                    lblYOB.Visible = false;

                    //make sure all the checkboxes are unchecked
                    cbPass.Checked = false;
                    cbFName.Checked = false;
                    cbLName.Checked = false;
                    cbYOB.Checked = false;

                }
                else
                {
                    Response.Redirect("read.aspx");
                }
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //move code from the txt box to the insert statement
            //declare the connection
            SqlConnection UCon = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare command
            SqlCommand UCommand = new SqlCommand(SqlDataSource1.UpdateCommand);
            UCommand.Connection = UCon;

            //set parameter for the email
            UCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

            //set the parameter for the password
            if (cbPass.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@Password", txtPass.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@Password", lblPass.Text);
            }

            //set parameters for FName, LName, and YOB
            if (cbFName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@FName", lblFName.Text);
            }
            //LName param
            if (cbLName.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@LName", lblLName.Text);
            }
            //YOB param
            if (cbYOB.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@YOB", lblYOB.Text);
            }

            //open the connection
            UCon.Open();

            //excute the command
            UCommand.ExecuteNonQuery();

            //close the connection
            UCon.Close();

            //show the users changes
            Response.Redirect("update.aspx");
        }

        protected void cbPass_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPass.Checked == true)
            {
                txtPass.Visible = true;
                txtPassC.Visible = true;
                rfvPassword.Enabled = true;
                lblNewValue.Visible = true;
                lblConfirm.Visible = true;
                lblPass.Visible = true;
                cvPass.Enabled = true;
            }
            else
            {
                txtPass.Visible = false;
                txtPassC.Visible = false;
                rfvPassword.Enabled = false;
                lblNewValue.Visible = false;
                lblConfirm.Visible = false;
                lblPass.Visible = false;
                cvPass.Enabled = false;
            }
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                txtFName.Visible = true;
                rfvFName.Enabled = true;
                lblNewValue.Visible = true;
                lblFName.Visible = true;
            }
            else
            {
                txtFName.Visible = false;
                rfvFName.Enabled = false;
                lblNewValue.Visible = false;
                lblFName.Visible = false;
            }
        }

        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                txtLName.Visible = true;
                rfvLName.Enabled = true;
                lblNewValue.Visible = true;
                lblLName.Visible = true;
            }
            else
            {
                txtLName.Visible = false;
                rfvLName.Enabled = false;
                lblNewValue.Visible = false;
                lblLName.Visible = false;
            }
        }

        protected void cbYOB_CheckedChanged(object sender, EventArgs e)
        {
            if (cbYOB.Checked == true)
            {
                txtYOB.Visible = true;
                rfvYOB.Enabled = true;
                lblNewValue.Visible = true;
                lblYOB.Visible = true;
            }
            else
            {
                txtYOB.Visible = false;
                rfvYOB.Enabled = false;
                lblNewValue.Visible = false;
                lblYOB.Visible = false;
            }
        }
    }
}