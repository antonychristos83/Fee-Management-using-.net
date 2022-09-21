using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fee_Management
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ClearAllData()
        {
            txtUname.Text = "";
            txtPass.Text = "";
            lblmsg.Text = "";

        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            if (txtUname.Text != "" && txtPass.Text != "")
            {
                Session["uname"] = txtUname.Text;
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("select * from Users where Uname=@username and Upass=@word", con);
                    cmd.Parameters.AddWithValue("@username", txtUname.Text);
                    cmd.Parameters.AddWithValue("@word", txtPass.Text);
                    adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    int i = cmd.ExecuteNonQuery();
                    if (dt.Rows.Count > 0)
                    {
                        ClearAllData();
                        Response.Redirect("StudentInfo.aspx");
                    }
                    con.Close();
                }
            }
            else
            {
                lblmsg.Text = "Invalid User";
            }
        }

        
    }
}