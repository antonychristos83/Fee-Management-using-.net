using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Fee_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewStudents.DataBind();
            }
        }
        public void ClearAllData()
        {
            txtName.Text = "";
            ddlCourse.Text = "";
            txtDOP.Text = "";
            ddlCourse.Text = "";
            ddStatus.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = (string)Session["uname"];
            btnlogout.Text = user;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSID.Text = dgViewStudents.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewStudents.SelectedRow.Cells[2].Text;
            ddlCourse.Text = dgViewStudents.SelectedRow.Cells[3].Text;
            txtDOP.Text = dgViewStudents.SelectedRow.Cells[4].Text;
            ddStatus.Text = dgViewStudents.SelectedRow.Cells[5].Text;   
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && ddlCourse.Text != "" && ddStatus.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert into Students(Name,Course,Payment_date,Payment_status) Values(@name,@course,@payment_date,@payment_status)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@course", ddlCourse.Text);
                    txtDOP.Text = Calendar1.SelectedDate.ToString();
                    cmd.Parameters.AddWithValue("@payment_date", txtDOP.Text);
                    cmd.Parameters.AddWithValue("@payment_status", ddStatus.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                txtlbl.Text = "Fill all fields";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (txtName.Text != "" && ddlCourse.Text != "" && ddStatus.Text != "")
            {
                using(con= new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Students set Name=@name,Course=@course,Payment_date=@payment_date,Payment_status=@payment_status where StudentID=@studentid", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@course", ddlCourse.SelectedValue);
                    txtDOP.Text = Calendar1.SelectedDate.ToString();
                    cmd.Parameters.AddWithValue("@payment_date", txtDOP.Text);
                    cmd.Parameters.AddWithValue("@payment_status", ddStatus.SelectedValue);
                    cmd.Parameters.AddWithValue("@studentid", lblSID.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                txtlbl.Text = "Fill all fields";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && ddlCourse.Text != ""&&ddStatus.Text!="")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Delete from Students where StudentID=@studentid", con);
                    cmd.Parameters.AddWithValue("@studentid", lblSID.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                txtlbl.Text = "Fill all fields";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            {
                txtDOP.Text = Calendar1.SelectedDate.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}