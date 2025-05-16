using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataBind();

                //set selected index
                DropDownList1.SelectedIndex = 0;

                SqlConnection connIns = new SqlConnection(SqlDataSource2.ConnectionString);

                SqlCommand cmdIns = new SqlCommand(SqlDataSource2.SelectCommand);

                cmdIns.Connection = connIns;
                cmdIns.Parameters.AddWithValue("@Cou_ID", DropDownList1.SelectedValue);

                //open connection
                connIns.Open();

                //populate data reader
                SqlDataReader reader = cmdIns.ExecuteReader();

                while (reader.Read())
                {
                    CourseName.Text = reader[1].ToString();
                    courseDescription.Text = reader[2].ToString();
                    ImageMap1.ImageUrl = reader[4].ToString();
                }
                connIns.Close();

            }
        }

        protected void ddlinstructor_SelectedIndexChanged(object sender, EventArgs e)
        {
            //build sqlconnection
            SqlConnection connIns = new SqlConnection(SqlDataSource2.ConnectionString);

            //

            //build command
            SqlCommand cmdIns = new SqlCommand(SqlDataSource2.SelectCommand);

            cmdIns.Connection = connIns;
            cmdIns.Parameters.AddWithValue("@Cou_ID", DropDownList1.SelectedValue);

            //open connection
            connIns.Open();
            //populate data reader
            SqlDataReader reader = cmdIns.ExecuteReader();

            while (reader.Read())
            {
                CourseName.Text = reader[1].ToString();
                courseDescription.Text = reader[2].ToString();
                ImageMap1.ImageUrl = reader[4].ToString();
            }
            connIns.Close();
        }
    
    }
}