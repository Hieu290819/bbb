using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                Session.Timeout = 10;
                if (Session["Login"] != null)
                {
                    string ten = (string)Session["Login"];
                    LblWelcome.Text = "CHÀO MỪNG " + ten.ToUpper() + " ĐẾN VỚI PHẦN QUẢN TRỊ ỨNG DỤNG SÁCH ONLINE <br/> CHỌN CÁC MỤC Ở MENU QUẢN TRỊ ĐỂ THỰC HIỆN CÁC THAO TÁC QUẢN TRỊ";
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}