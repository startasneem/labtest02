using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labTest02
{
    public partial class ViewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lebelforTotalAmount.DataBind();
            }
        }

        public double GetTotalSallery(double BasicSallery, double convRate, double houseRent)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT BasicSallery, convRate, houseRent FROM EmployeeSallery";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader sdr = command.ExecuteReader();

            while (sdr.Read())
            {
                string basic = sdr["BasicSallery"].ToString();
                string conv = (sdr["convRate"].ToString());
                string houserent = (sdr["houseRent"].ToString());

                EmployeeSallery aSallery = new EmployeeSallery();
                aSallery.BasicSallery = Convert.ToDouble(basic);
                aSallery.ConvRate = Convert.ToDouble(conv);
                aSallery.HouseRent = Convert.ToDouble(houserent);
                aSallery.GetTotalSallery();

            }
            sdr.Close();
            connection.Close();
            return BasicSallery + ((BasicSallery * convRate) / 100) + ((BasicSallery * houseRent) / 100);

        }
        
        public double GetTotal()
        {
            EmployeeSallery aSallery = new EmployeeSallery();
            string connectionString = WebConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT BasicSallery, convRate, houseRent FROM EmployeeSallery";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader sdr = command.ExecuteReader();

            while (sdr.Read())
            {
                string basic = sdr["BasicSallery"].ToString();
                string conv = (sdr["convRate"].ToString());
                string houserent = (sdr["houseRent"].ToString());

                aSallery.BasicSallery = Convert.ToDouble(basic);
                aSallery.ConvRate = Convert.ToDouble(conv);
                aSallery.HouseRent = Convert.ToDouble(houserent);
                aSallery.GetTotalSallery();
                aSallery.GetTotalAmount();

            }
            sdr.Close();
            connection.Close();
           
            return aSallery.TotalAmount;
        }
    }
}

