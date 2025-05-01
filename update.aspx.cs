using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.EnterpriseServices;


namespace Group_12_Project
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Asking for info. w/o button being clicked
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {

                    //Declare a sqldatareader to store query results
                    SqlDataReader myReader;

                    //Declare sqlconnection to connect to database
                    SqlConnection myCnxn = new SqlConnection(SqlDataSource3.ConnectionString);

                    //Declare sql command
                    SqlCommand myCommand = new SqlCommand(SqlDataSource3.SelectCommand);

                    //set connection
                    myCommand.Connection = myCnxn;

                    //set parameter
                    //populate email
                    //AddWithValue send the email session variable
                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());
                    myCommand.Parameters.AddWithValue("@Password", txtPass.Text);

                    //Open database connection
                    myCnxn.Open();

                    //execute command
                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);


                    while (myReader.Read())
                    {
                        lblEmail.Text = myReader.GetString(0);
                        lblPass.Text = myReader.GetString(1);
                        lblFName.Text = myReader.GetString(2);
                        lblLName.Text = myReader.GetString(3);
                        lblYOB.Text = myReader.GetInt32(4).ToString();
                    }
                    //close connection
                    myCnxn.Close();

                    //Turn off controls. Show only when requestd time.
                    txtPass.Visible = false;
                    txtPassC.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtYOB.Visible = false;

                    //Hide update labels
                    lblPassC.Visible = false;
                    lblNInfo.Visible = false;

                    //Make sure all checkboxes are unchecked
                    cbPass.Checked = false;
                    cbFName.Checked = false;
                    cbLName.Checked = false;
                    cbYOB.Checked = false;
                }
                else
                {
                    Response.Redirect("default.aspx");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //move values from text boxes to insert statment
            //declare sql connection
            SqlConnection updateCon = new SqlConnection(SqlDataSource3.ConnectionString);

            //declare command
            SqlCommand updateCommand = new SqlCommand(SqlDataSource3.UpdateCommand);
            updateCommand.Connection = updateCon;

            //set email parameter
            updateCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

            //Set password parameter
            if (cbPass.Checked == true)
            {
                updateCommand.Parameters.AddWithValue("@Password", txtPass.Text);
            }
            else
            {
                updateCommand.Parameters.AddWithValue("@Password", lblPass.Text);
            }
            //FName Parameter
            if (cbFName.Checked == true)
            {
                updateCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            }
            else
            {
                updateCommand.Parameters.AddWithValue("@FName", lblFName.Text);
            }
            //LName Parameter
            if (cbLName.Checked == true)
            {
                updateCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            }
            else
            {
                updateCommand.Parameters.AddWithValue("@LName", lblLName.Text);
            }
            //YOB Parameter
            if (cbYOB.Checked == true)
            {
                updateCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);
            }
            else
            {
                updateCommand.Parameters.AddWithValue("@YOB", lblYOB.Text);
            }


            //open the connection
            updateCon.Open();

            //insert command
            updateCommand.ExecuteNonQuery();

            //close the connection
            updateCon.Close();

            //send to a page
            Response.Redirect("update.aspx");
        }

        protected void cbPass_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPass.Checked == true)
            {
                txtPass.Visible = true;
                txtPassC.Visible = true;
                rfvPass.Enabled = true;
                lblNInfo.Visible = true;
                lblPassC.Visible = true;
                cvPass.Enabled = true;
            }
            else
            {
                txtPass.Visible = false;
                txtPassC.Visible = false;
                rfvPass.Enabled = false;
                lblNInfo.Visible = false;
                lblPassC.Visible = false;
                cvPass.Enabled = false;
            }
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                txtFName.Visible = true;
                rfvFName.Enabled = true;
                lblNInfo.Visible = true;
            }
            else
            {
                txtFName.Visible = false;
                rfvFName.Enabled = false;
                lblNInfo.Visible = false;
            }
        }

        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                txtLName.Visible = true;
                rfvLName.Enabled = true;
                lblNInfo.Visible = true;
            }
            else
            {
                txtLName.Visible = false;
                rfvLName.Enabled = false;
                lblNInfo.Visible = false;
            }
        }

        protected void cbYOB_CheckedChanged(object sender, EventArgs e)
        {
            if (cbYOB.Checked == true)
            {
                txtYOB.Visible = true;
                revYOB.Enabled = true;
                lblNInfo.Visible = true;
            }
            else
            {
                txtYOB.Visible = false;
                revYOB.Enabled = false;
                lblNInfo.Visible = false;
            }
        }
    }
}