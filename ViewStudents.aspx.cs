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
    public partial class ViewStudents : System.Web.UI.Page
    {
        string connectionString = "server=localhost;user id=root;database=studentregistration;password=November251994.";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridFill();
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
                gvViewStudent.DataSource = dtbl;
                gvViewStudent.DataBind();

            }
        }
    }
}