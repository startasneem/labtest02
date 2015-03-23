using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labTest02
{
    public partial class EntryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            EmployeeSallery aSallery = new EmployeeSallery();
            aSallery.EmployeeId = employeeIDTextBox.Text;
            aSallery.EmployeeName = nameTextBox.Text;
            aSallery.Designation = designationTextBox.Text;
            aSallery.Email = emailTextBox.Text;
            aSallery.BasicSallery = Convert.ToDouble(basicSalleryTextBox.Text);
            aSallery.ConvRate = Convert.ToDouble(convTextBox.Text);
            aSallery.HouseRent = Convert.ToDouble(hrTextBox.Text);

            if (SaveSallery(aSallery))
            {
                messageLabel.CssClass = "label label-success";
                messageLabel.Text = "Saved Successfully";
            }
            else
            {
                messageLabel.CssClass = "label label-danger";
                messageLabel.Text = "Insertion Failed!";
            }
        }

        private bool SaveSallery(EmployeeSallery aSallery)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            
            string query = "INSERT INTO EmployeeSallery VALUES(@EmployeeID, @EmployeeName, @Designation, @email,@BasicSallery,@convRate,@houseRent)"; ;

            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@EmployeeID", aSallery.EmployeeId);
            command.Parameters.AddWithValue("@EmployeeName", aSallery.EmployeeName);
            command.Parameters.AddWithValue("@Designation", aSallery.Designation);
            command.Parameters.AddWithValue("@email", aSallery.Email);
            command.Parameters.AddWithValue("@BasicSallery", aSallery.BasicSallery);
            command.Parameters.AddWithValue("@convRate", aSallery.ConvRate);
            command.Parameters.AddWithValue("@houseRent", aSallery.HouseRent);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();

            return rowAffected > 0;
        }
    }
}
