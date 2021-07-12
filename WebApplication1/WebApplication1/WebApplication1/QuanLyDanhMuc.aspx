<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMuc.aspx.cs" Inherits="WebApplication1.QuanLyDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style4 {
            width: 37%;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 37%;
            height: 35px;
           
        }
        .auto-style7 {
            width: 37%;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            width: 37%;
            height: 22px;
        }
        .auto-style10 {
            height: 22px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" width="100%" style="padding-right: 150px; padding-left: 150px;">
        <caption height="25px" colspan="2" style="background-color: #9999FF; font-weight: bold;">
            QUẢN LÝ DANH MỤC SẢN PHẨM</caption>
        <tr>
            <td class="auto-style6" align="right">Mã Loại&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtMaLoai" runat="server" Enabled="False" CssClass="auto-style5" Width="319px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" align="right">Thể loại sách&nbsp;&nbsp; </td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtTenLoai" runat="server" Width="320px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="BtnThem" runat="server" onclick="BtnThem_Click" Text="Thêm" CssClass="auto-style5" BackColor="#FFFFCC" />
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
                <asp:Button ID="BtnCo" runat="server" onclick="BtnCo_Click" Text="Có" Visible="False" BackColor="#FFFFCC" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnKhong" runat="server" onclick="BtnKhong_Click" Text="Không" Visible="False" BackColor="#FFFFCC" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GvDanhMuc" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" GridLines="None" 
                    onselectedindexchanged="GvDanhMuc_SelectedIndexChanged" Width="100%" DataKeyNames="MaDanhMuc" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MaDanhMuc" HeaderText="Mã Danh Mục" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenDanhMuc" HeaderText="Tên Danh Mục" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
