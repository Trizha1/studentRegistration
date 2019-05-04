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
    public partial class InstructorInfo : System.Web.UI.Page
    {
        string connectionString = "server=localhost;user id=root;database=studentregistration;password=November251994.";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                GridFill();
            }
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
                {
                    sqlcon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("InstructorAddOrEdit", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_InstructorID", Convert.ToInt32(hfInstructorID.Value == "" ? "0" : hfInstructorID.Value));
                    sqlCmd.Parameters.AddWithValue("_Salutation", txtSalutation.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_FirstName", txtInsFirstName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_LastName", txtInsLastName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_CourseSection", Convert.ToInt32(txtCourseSection.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_StartTime", Convert.ToDateTime(txtStartTime.Text));
                    sqlCmd.Parameters.AddWithValue("_EndTime", Convert.ToDateTime(txtEndTime.Text));
                    sqlCmd.Parameters.AddWithValue("_Location", txtLocation.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_Capacity", Convert.ToInt32(txtCapacity.Text.Trim()));

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
            hfInstructorID.Value = "";
            txtSalutation.Text = txtInsFirstName.Text = txtInsLastName.Text = txtCourseSection.Text = txtStartTime.Text = txtEndTime.Text = txtLocation.Text = txtCapacity.Text = "";
            btnSubmit.Text = "Submit";
            btnDelete.Enabled = false;
            lblError.Text = lblSuccessMsg.Text = "";
        }
        protected void btnClear_Click1(object sender, EventArgs e)
        {
            Clear();
        }

        void GridFill()
        {
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("InstructorViewAll", sqlcon);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                gvInstructor.DataSource = dtbl;
                gvInstructor.DataBind();

            }
        }

        protected void lnkSelect_OnClick(object sender, EventArgs e)
        {
            int InstructorID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("InstructorViewByID", sqlcon);
                sqlDa.SelectCommand.Parameters.AddWithValue("_InstructorID", InstructorID);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);

                txtSalutation.Text = dtbl.Rows[0][1].ToString();
                txtInsFirstName.Text = dtbl.Rows[0][2].ToString();
                txtInsLastName.Text = dtbl.Rows[0][3].ToString();
                txtCourseSection.Text = dtbl.Rows[0][4].ToString();
                txtStartTime.Text = dtbl.Rows[0][5].ToString();
                txtEndTime.Text = dtbl.Rows[0][6].ToString();
                txtLocation.Text = dtbl.Rows[0][7].ToString();
                txtCapacity.Text = dtbl.Rows[0][8].ToString();

                hfInstructorID.Value = dtbl.Rows[0][0].ToString();

                btnSubmit.Text = "Update";
                btnDelete.Enabled = true;
            }

        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlCommand sqlCmd = new MySqlCommand("InstructorDeleteByID", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("_InstructorID", Convert.ToInt32(hfInstructorID.Value == "" ? "0" : hfInstructorID.Value));
                sqlCmd.ExecuteNonQuery();
                GridFill();
                Clear();
                lblSuccessMsg.Text = "Deleted Successfully";
            }
        }

       
    }
}