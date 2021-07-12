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
    public partial class ChiTietSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string maSP = Request.QueryString.Get("MaSanPham");
                GetChiTietSanPham(maSP);
            }
        }

        public void GetChiTietSanPham(string maSP)
        {
            // Tạo kết nối đến CSDL
            string connStr = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy sách theo MaSach
            string sql = "select * from SanPham where MaSanPham='" + maSP +"'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            // Gán dữ liệu lên GridView
            GvChiTietSP.DataSource = dr;
            GvChiTietSP.DataBind();
        }
    }
}