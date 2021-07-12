using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace WebApplication1
{
    public partial class UC_DanhMuc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDanhMuc();
        }

        public void GetDanhMuc()
        {
            // Tạo kết nối đến CSDL
            string connStr = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy toàn bộ thể loại sách trong bảng TheLoai
            string sql = "select * from DanhMuc";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            // Gán lên dữ liệu lên GridView
            GvDanhMuc.DataSource = dr;
            GvDanhMuc.DataBind();
        }
    }
}