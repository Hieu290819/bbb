<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Trangchu.Master" AutoEventWireup="true" CodeBehind="DanhMuc.aspx.cs" Inherits="WebApplication1.DanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" width="100%">
        <tr>
            <td style="background-color: #BBA259">
                <asp:Label ID="LblTongSoSanPham" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DlSanPham" runat="server" BackColor="#FFFFC0" RepeatColumns="3" Width="100%">
                    <ItemTemplate>
                        <table cellspacing="1">
                            <tr>
                                <td rowspan="3">
                                    <asp:Image ID="ImgSanPham" runat="server" Height="109px" 
                                        ImageUrl='<%# "~/Images/" + Eval("Anh") %>' Width="102px" />
                                </td>
                                <td>
                                    <asp:HyperLink ID="HplChiTiet" runat="server" 
                                        NavigateUrl='<%# "ChiTietSP.aspx?MaSanPham=" + Eval("MaSanPham") %>' 
                                        Text='<%# Eval("TenSanPham") %>'></asp:HyperLink>
                                </td>
                            </tr>
                          <tr>
                               <td>
                                     <strong>Năm Sản Xuất: </strong>
                                     <asp:Label ID="LblNamSX" runat="server" Text='<%# Eval("NamSX") %>'></asp:Label>
                               </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Giá bán: </strong>
                                    <asp:Label ID="LblGia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
