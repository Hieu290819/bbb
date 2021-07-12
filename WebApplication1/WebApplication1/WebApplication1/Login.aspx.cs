using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            string con = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
            SqlConnection conn = new SqlConnection(con);

            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            string sql = "select * from NguoiDung";
            SqlCommand cmd = new SqlCommand(sql, conn);
            dr = cmd.ExecuteReader();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            while (dr.Read())
            {
                if (dr[0].ToString().Equals(TextBox1.Text) && dr[1].ToString().Equals(TextBox2.Text))
                {
                    Session["Login"] = TextBox1.Text;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Label1.Text = "Sai thông tin đăng nhập!";
                }
            }
        }
    }
}