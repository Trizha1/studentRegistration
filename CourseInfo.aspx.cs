using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace StudentRegistration
{
    public partial class CourseInfo : System.Web.UI.Page
    {
        string connectionString = "server=localhost;user id=root;database=studentregistration;password=November251994.";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear();
                GridFill();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
                {
                    sqlcon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("CourseAddOrEdit", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_CourseID", Convert.ToInt32(hfCourseID.Value == "" ? "0" : hfCourseID.Value));
                    sqlCmd.Parameters.AddWithValue("_CourseTitle", txtCourseTitle.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_Description", txtDescription.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_Cost", Convert.ToDecimal(txtCost.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_Prerequisite", txtPrereq.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    GridFill();
                    Clear();
                    lblSuccessMsg.Text = "Submitted Successfully";
                }
            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message;
            }
        }

        void Clear()
        {
            hfCourseID.Value = "";
            txtCourseTitle.Text = txtDescription.Text = txtCost.Text = txtPrereq.Text = "";
            btnSubmit.Text = "Submit";
            btnDelete.Enabled = false;
            lblError.Text = lblSuccessMsg.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        void GridFill()
        {
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("CourseViewAll",sqlcon);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                gvCourse.DataSource = dtbl;
                gvCourse.DataBind();

            }
        }

        protected void lnkSelect_OnClick (object sender, EventArgs e)
        {
            int CourseID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("courseViewByID", sqlcon);
                sqlDa.SelectCommand.Parameters.AddWithValue("_CourseID", CourseID);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);

                txtCourseTitle.Text = dtbl.Rows[0][1].ToString();
                txtDescription.Text = dtbl.Rows[0][2].ToString();
                txtCost.Text = dtbl.Rows[0][3].ToString();
                txtPrereq.Text = dtbl.Rows[0][4].ToString();

                hfCourseID.Value = dtbl.Rows[0][0].ToString();

                btnSubmit.Text = "Update";
                btnDelete.Enabled = true;
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlCommand sqlCmd = new MySqlCommand("courseDeleteByID", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("_CourseID", Convert.ToInt32(hfCourseID.Value == "" ? "0" : hfCourseID.Value));
                sqlCmd.ExecuteNonQuery();
                GridFill();
                Clear();
                lblSuccessMsg.Text = "Deleted Successfully";
            }
        }
    }
}