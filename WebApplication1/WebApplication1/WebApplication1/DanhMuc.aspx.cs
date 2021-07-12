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
    public partial class DanhMuc : System.Web.UI.Page
    {
        private string connStr = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["MaLoaiLayDuoc"] = Request.QueryString.Get("MaDanhMuc");
                GetSP();
                GetSoLuong();
            }
        }

        public void GetSP()
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy sách theo thể loại
            string sql = "select * from SanPham where MaDanhMuc ='" + ViewState["MaLoaiLayDuoc"]+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            // Gán dữ liệu lên DataList
            DlSanPham.DataSource = dr;
            DlSanPham.DataBind();
        }

        public void GetSoLuong()
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Đếm số lượng sách theo thể loại
            string sql = "Select Count(*) from SanPham where MaDanhMuc='" + ViewState["MaLoaiLayDuoc"]+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            // Hiển thị kết quả qua Label
            int soLuong = (int)cmd.ExecuteScalar();
            LblTongSoSanPham.Text = "Tìm được [" + soLuong.ToString() + "] sản phẩm";
        }
    }
}