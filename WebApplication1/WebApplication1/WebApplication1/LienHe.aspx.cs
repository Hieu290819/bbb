using System;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class LienHe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string email = "hoang.dn.647@aptechlearning.edu.vn";
            string password = "Duonghoang123";

            var loginInfo = new NetworkCredential(email, password);
            var msg = new MailMessage();
            var smtpClient = new SmtpClient("smtp.gmail.com", 587);
            try
            {
                msg.From = new MailAddress(email);
                msg.To.Add(new MailAddress(email));
                msg.Subject = "Thông Tin Liên Hệ ";
                msg.Body = MailBody();
                msg.IsBodyHtml = true;

                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = loginInfo;
                smtpClient.Send(msg);
                Label1.Text = "Cảm ơn bạn đã gửi thông điệp đến KDHK";
                ResetFrom();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }

         private void ResetFrom()
    {
        txtHoTen.Text = "";
        txtDiaChi.Text = "";
        txtDienThoai.Text = "";
        txtEmail.Text = "";
        txtNoiDung.Text = "";
    }
 
 
    private string MailBody()
    {
        string strHTML = "";
        strHTML += "Họ và tên: " + txtHoTen.Text + "<br>";
        strHTML += "Địa chỉ: " + txtDiaChi.Text + "<br>";
        strHTML += "Điện thoại: " + txtDienThoai.Text + "<br>";
        strHTML += "Email: " + txtEmail.Text + "<br>";
        strHTML += "Đã gửi qua Form liên hệ với thông điệp:<br><b>";
        strHTML += txtNoiDung.Text + "</b>";
        return strHTML;
    }
    }
}