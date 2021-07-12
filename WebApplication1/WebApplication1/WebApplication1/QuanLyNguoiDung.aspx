<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLyNguoiDung.aspx.cs" Inherits="WebApplication1.QuanLyNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            width: 444px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            height: 34px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
            width: 444px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td align="center" height="25px" colspan="2" 
                style="background-color: #9999FF; font-weight: bold;">QUẢN LÝ NGƯỜI DÙNG
            </td>
        </tr>
        <tr>
            <td class="auto-style6" align="right">Tên Đăng Nhập</td>
            <td>
                <asp:TextBox ID="TxtTenDangNhap" runat="server" Width="290px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" align="right">Mật Khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TxtMatKhau" runat="server" Width="290px" Enabled="False" ></asp:TextBox>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="auto-style8">
                <asp:Button ID="BtnThem" runat="server" onclick="BtnThem_Click" Text="Thêm" CssClass="auto-style7" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnXoa" runat="server" onclick="BtnXoa_Click" Text="Xóa" Enabled="False" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSua" runat="server" onclick="BtnSua_Click" Text="Sửa" Enabled="False" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnLuu" runat="server" onclick="BtnLuu_Click" Text="Lưu" Enabled="False" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnHuy" runat="server" onclick="BtnHuy_Click" Text="Huỷ" Enabled="False" BackColor="#FFFFCC" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="LblThongBao" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                    &nbsp;&nbsp;
                <asp:Button ID="BtnCo" runat="server" onclick="BtnCo_Click" Text="Có" Visible="False" style="width: 30px" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnKhong" runat="server" onclick="BtnKhong_Click" Text="Không" Visible="False" BackColor="#FFFFCC" />
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GvNguoiDung" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GvNguoiDung_SelectedIndexChanged" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>              
                        <asp:BoundField DataField="TenDangNhap" HeaderText="Tên đăng nhập" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>

    </table>
</asp:Content>
