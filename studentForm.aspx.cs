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
    public partial class studentForm : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
                {
                    sqlcon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("StudentAddOrEdit", sqlcon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_StudentID", Convert.ToInt32(hfStudentID.Value == "" ? "0" : hfStudentID.Value));                 
                    sqlCmd.Parameters.AddWithValue("_FirstName", txtFirstName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_LastName", txtLastName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_Address", txtAddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_City", txtCity.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_State", txtState.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_Zip", Convert.ToInt32(txtZip.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_Phone", txtPhone.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_RegistrationDate", Convert.ToDateTime(txtRegistrationDate.Text.Trim()));

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
            hfStudentID.Value = "";
            txtFirstName.Text = txtLastName.Text = txtAddress.Text = txtCity.Text = txtState.Text = txtZip.Text = txtPhone.Text = txtRegistrationDate.Text = "";
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
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("StudentViewAll", sqlcon);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                gvStudent.DataSource = dtbl;
                gvStudent.DataBind();

            }
        }

        protected void lnkSelect_OnClick(object sender, EventArgs e)
        {
            int InstructorID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlDataAdapter sqlDa = new MySqlDataAdapter("StudentViewByID", sqlcon);
                sqlDa.SelectCommand.Parameters.AddWithValue("_StudentID", InstructorID);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
              
                txtFirstName.Text = dtbl.Rows[0][1].ToString();
                txtLastName.Text = dtbl.Rows[0][2].ToString();
                txtAddress.Text = dtbl.Rows[0][3].ToString();
                txtCity.Text = dtbl.Rows[0][4].ToString();
                txtState.Text = dtbl.Rows[0][5].ToString();
                txtZip.Text = dtbl.Rows[0][6].ToString();
                txtPhone.Text = dtbl.Rows[0][7].ToString();
                txtRegistrationDate.Text = dtbl.Rows[0][8].ToString();

                hfStudentID.Value = dtbl.Rows[0][0].ToString();

                btnSubmit.Text = "Update";
                btnDelete.Enabled = true;
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            using (MySqlConnection sqlcon = new MySqlConnection(connectionString))
            {
                sqlcon.Open();
                MySqlCommand sqlCmd = new MySqlCommand("StudentDeleteByID", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("_StudentID", Convert.ToInt32(hfStudentID.Value == "" ? "0" : hfStudentID.Value));
                sqlCmd.ExecuteNonQuery();
                GridFill();
                Clear();
                lblSuccessMsg.Text = "Deleted Successfully";
            }
        }
    }
}