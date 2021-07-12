<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Trangchu.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WebApplication1.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 80%;
            color:red
        }
        .auto-style7 {
            width: 17%;
            height: 49px;
            color:blue
        }
        .auto-style8 {
            width: 80%;
            height: 49px;
            color:red;
        }
        
        .auto-style9 {
            width: 17%;
            color:blue;
        }
        .auto-style10 {
            width: 673px;
            height: 570px;
        }
        .auto-style11 {
            width: 616px;
        }
        .auto-style12 {
            margin-left: 0px;
            height: 566px;
        }
        .auto-style13 {
            margin-left: 0px;
            height: 339px;
        }
        .auto-style14 {
            height: 8px;
        }
        .auto-style15 {
            margin-top: 0px;
        }
        .auto-style16 {
            width: 17%;
            color: blue;
            height: 107px;
        }
        .auto-style17 {
            width: 80%;
            color: red;
            height: 107px;
        }
        .auto-style18 {
            height: 57px;
            color : green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="10" cellspacing="10" id="FormLienKe" align="left" class="auto-style10">
    <tr>
        <td colspan="2" align="center" class="auto-style18" >
            <h1 class="auto-style14" >Liên Hệ</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            Họ và tên:<span class="style1"> *</span></td>
        <td class="auto-style8">
            <asp:TextBox ID="txtHoTen" runat="server" Width="275px" CssClass="auto-style15" Height="17px"  />&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtHoTen" ErrorMessage="Vui lòng điền tên bạn"
                Display="Dynamic"  />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            Địa chỉ&nbsp;</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtDiaChi" runat="server" Width="277px"   />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            Điện Thoại:</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtDienThoai" runat="server" Width="275px" Height="18px"   />
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            Email:<span class="style1"> *</span></td>
        <td class="auto-style5">
            <asp:TextBox ID="txtEmail" runat="server" Width="274px"   />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Vui lòng nhập Email"
                Display="Dynamic"  />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  runat="server"
                ErrorMessage="Email không hợp lệ" ControlToValidate="txtEmail"
                Display="Dynamic"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" class="auto-style16">
            Thông điệp:<span class="style1"> *</span></td>
        <td class="auto-style17" >
            <asp:TextBox ID="txtNoiDung" style="background-color:#FAFAFA; padding:5px;"
            TextMode="MultiLine" Rows="6" runat="server" Width="488px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="txtNoiDung" ErrorMessage="*"
                Display="Dynamic" />
        </td>
    </tr>
    <tr>
        <td valign="top" colspan="2" align="center" id="LinkOfList">
            <asp:Button ID="btnSend" runat="server" Text="Gửi liên hệ"
                onclick="btnSend_Click" BorderStyle="Solid" Height="32px" Width="109px" />
            </td>
    </tr>
    <tr>
        <td valign="top" colspan="2" align="center" id="LinkOfList" class="auto-style4">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
    </tr>
</table>
    <table cellpadding="10" cellspacing="10" id="FormLienKe" align="right" class="auto-style12">
        <td class="auto-style11">
            <div style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: left;">
                <span style="box-sizing: border-box; font-family: Georgia;"><span style="box-sizing: border-box; color: rgb(20, 20, 20);"><b style="box-sizing: border-box; font-weight: bold;">
                CỬA HÀNG NỘI THẤT KDHK</b></span></span><div style="box-sizing: border-box; text-align: left;">
                    <span style="box-sizing: border-box; font-family: Georgia;"><span style="box-sizing: border-box; color: rgb(20, 20, 20);">
                    <div style="box-sizing: border-box; padding-left: 30px;">
                        <ul style="box-sizing: border-box; margin: 13px 0px 0px; padding: 0px; list-style: outside none none;">
                            <li style="box-sizing: border-box; margin: 15px 0px;">
        <span style="box-sizing: border-box; font-family: Georgia;"><span style="box-sizing: border-box; color: rgb(20, 20, 20);">o<span>&nbsp;</span><b style="box-sizing: border-box; font-weight: bold;">Trụ Sở:</b> Số 54 Cửu Việt 2 - Trâu Quỳ - Gia Lâm - Hà Nội<br style="box-sizing: border-box;" />
        o<span>&nbsp;</span><b style="box-sizing: border-box; font-weight: bold;">Xưởng Sản Xuất:</b> Số 65 Ngõ 1295 Giải Phóng - Quận Hoàng Mai - Hà Nội<br style="box-sizing: border-box;" />
        o<span>&nbsp;</span><b style="box-sizing: border-box; font-weight: bold;">Điện thoại:</b> <a class="internalLink"  style="box-sizing: border-box; background-color: transparent; color: rgb(240, 81, 61); text-decoration: none;"><span style="box-sizing: border-box; color: rgb(240, 81, 61);"><span style="box-sizing: border-box; text-decoration: underline;">09 3535 1616 - 0854 699 996</span></span></a></span><br style="box-sizing: border-box;" />
        <span style="box-sizing: border-box; color: rgb(20, 20, 20);">o<span>&nbsp;</span><b style="box-sizing: border-box; font-weight: bold;">Email:</b> <span style="box-sizing: border-box; color: rgb(240, 81, 61);"><a href="mailto:hoang.dn.647@aptechlearning.edu.vn" style="box-sizing: border-box; background-color: transparent; color: rgb(240, 81, 61); text-decoration: none;">KDHK@gmail.com</a></span></span><br style="box-sizing: border-box;" />
        <span style="box-sizing: border-box; color: rgb(20, 20, 20);">o<span>&nbsp;</span><b style="box-sizing: border-box; font-weight: bold;">Giờ làm việc:</b> <br style="box-sizing: border-box;" />
        Thứ 2 - Thứ 6: 8h00 - 17h30<br style="box-sizing: border-box;" />
        Thứ 7: 8h00 - 12h00</span></span></li>
                        </ul>
                    </div>
                    </span></span>
                </div>
            </div>
&nbsp;<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d931.1491253967475!2d105.93712462923467!3d21.008805551080904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a8cfa70f6317%3A0x96e823c33136f949!2zNTQgQ-G7rXUgVmnhu4d0IDIsIFRyw6J1IFF14buzLCBHaWEgTMOibSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1599189679887!5m2!1svi!2s" width="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" class="auto-style13"></iframe>
        </td>
    </table>
</asp:Content>
