using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class UC_SanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSP();
            }
        }

        public void GetSP()
        {
            string con = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
            SqlConnection conn = new SqlConnection(con);

            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy toàn bộ sách trong bảng Sach
            string sql = "select * from SanPham";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            // Gán dữ liệu lên DataList
            DlSanPham.DataSource = dr;
            DlSanPham.DataBind();
        }

        protected void DlSanPham_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}