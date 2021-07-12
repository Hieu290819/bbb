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
    public partial class QuanLyDanhMuc : System.Web.UI.Page
    {
        private string connStr = WebConfigurationManager.ConnectionStrings["QLNT"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Login"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    GetTheLoai();
                }
            }
        }

        public void Reset()
        {
            TxtMaLoai.Text = "";
            TxtTenLoai.Text = "";
        }
        public void GetTheLoai()
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy dữ liệu từ bảng TheLoai
            string sql = "select * from DanhMuc";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();

            // Gán dữ liệu lên GridView
            GvDanhMuc.DataSource = dr;
            GvDanhMuc.DataBind();
        }
        protected void BtnThem_Click(object sender, EventArgs e)
        {
            GvDanhMuc.SelectedIndex = -1;

            LblThongBao.Visible = false;

            TxtMaLoai.Enabled = false;

            TxtTenLoai.Enabled = true;

            Reset();

            TxtTenLoai.Focus();

            BtnLuu.Enabled = true;
            BtnHuy.Enabled = true;

            BtnThem.Enabled = false;
            BtnXoa.Enabled = false;
            BtnSua.Enabled = false;

            // Đánh dấu trạng thái thêm
            ViewState["flag"] = true;
        }

        private void Them()
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Thêm thể loại vào CSDL
            string sql = "insert into DanhMuc(MaDanhMuc,TenDanhMuc) Values(N'" + TxtMaLoai.Text + "',N'" + TxtTenLoai.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblThongBao.Visible = true;
                LblThongBao.Text = "Bạn đã thêm thành công!";
                GetTheLoai();
            }
            else
            {
                LblThongBao.Visible = true;
                LblThongBao.Text = "Bạn đã thêm không thành công!";
            }
        }
        protected void BtnXoa_Click(object sender, EventArgs e)
        {
            LblThongBao.Visible = true;
            LblThongBao.Text = "Bạn có muốn xóa không?";
            BtnCo.Visible = true;
            BtnKhong.Visible = true;
        }

        protected void BtnSua_Click(object sender, EventArgs e)
        {
            LblThongBao.Visible = false;

            TxtMaLoai.Enabled = true;

            TxtTenLoai.Enabled = true;

            BtnLuu.Enabled = true;
            BtnHuy.Enabled = true;

            BtnThem.Enabled = false;
            BtnXoa.Enabled = false;
            BtnSua.Enabled = false;

            // Đánh dấu trạng thái sửa
            ViewState["flag"] = false;
        }

        private void Sua()
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Sửa thể loại trong CSDL
            string sql = "update DanhMuc set TenDanhMuc=N'" + TxtTenLoai.Text + "' where MaDanhMuc='" + TxtMaLoai.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblThongBao.Visible = true;
                LblThongBao.Text = "Bạn đã sửa thành công!";
                GetTheLoai();
            }
            else
            {
                LblThongBao.Visible = true;
                LblThongBao.Text = "Bạn đã sửa không thành công!";
            }
        }
        protected void BtnLuu_Click(object sender, EventArgs e)
        {
            TxtMaLoai.Enabled = false;
            TxtTenLoai.Enabled = false;

            // Trạng thái thêm
            if ((bool)ViewState["flag"] == true)
            {
                Them();

                Reset();

                BtnThem.Enabled = true;

                BtnLuu.Enabled = false;
                BtnHuy.Enabled = false;

                BtnXoa.Enabled = false;
                BtnSua.Enabled = false;
            }
            // Trạng thái sửa
            else
            {
                Sua();

                BtnThem.Enabled = true;

                BtnXoa.Enabled = true;
                BtnSua.Enabled = true;

                BtnLuu.Enabled = false;
                BtnHuy.Enabled = false;
            }
        }

        protected void BtnHuy_Click(object sender, EventArgs e)
        {
            TxtMaLoai.Enabled = false;
            TxtTenLoai.Enabled = false;

            BtnThem.Enabled = true;

            // Trạng thái thêm
            if ((bool)ViewState["flag"] == true)
            {
                Reset();

                BtnXoa.Enabled = false;
                BtnSua.Enabled = false;
                BtnLuu.Enabled = false;
                BtnHuy.Enabled = false;
            }
            // Trạng thái sửa
            else
            {
                BtnXoa.Enabled = true;
                BtnSua.Enabled = true;

                BtnLuu.Enabled = false;
                BtnHuy.Enabled = false;

                GvDanhMuc_SelectedIndexChanged(sender, e);
            }

            LblThongBao.Visible = true;
            LblThongBao.Text = "Đã hủy!";
        }

        protected void BtnCo_Click(object sender, EventArgs e)
        {
            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Xoá thể loại khỏi CSDL
            string sql = "delete DanhMuc where MaDanhMuc='" + TxtMaLoai.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblThongBao.Visible = true;
                LblThongBao.Text = "Bạn đã xóa thành công!";

                TxtMaLoai.Enabled = false;
                TxtTenLoai.Enabled = false;

                Reset();

                BtnXoa.Enabled = false;
                BtnSua.Enabled = false;
                BtnLuu.Enabled = false;
                BtnHuy.Enabled = false;
                BtnCo.Visible = false;
                BtnKhong.Visible = false;

                GetTheLoai();
                GvDanhMuc.SelectedIndex = -1;
            }
        }

        protected void BtnKhong_Click(object sender, EventArgs e)
        {
            LblThongBao.Visible = false;
            BtnCo.Visible = false;
            BtnKhong.Visible = false;
        }

        protected void GvDanhMuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblThongBao.Visible = false;

            TxtMaLoai.Enabled = false;
            TxtTenLoai.Enabled = false;

            BtnThem.Enabled = true;

            BtnXoa.Enabled = true;
            BtnSua.Enabled = true;

            BtnLuu.Enabled = false;
            BtnHuy.Enabled = false;

            int selectedRow = GvDanhMuc.SelectedIndex;

            // Tạo kết nối đến CSDL
            SqlConnection conn = new SqlConnection(connStr);
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            // Lấy dữ liệu từ bảng TheLoai
            string sql = "select * from DanhMuc";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            // Gán dữ liệu dòng được chọn lên Textbox
            TxtMaLoai.Text = dt.Rows[selectedRow][0].ToString();
            TxtTenLoai.Text = dt.Rows[selectedRow][1].ToString();
        }
    }
}