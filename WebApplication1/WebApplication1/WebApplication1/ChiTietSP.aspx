<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Trangchu.Master" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="WebApplication1.ChiTietSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table cellspacing="1">
        <tr>
            <td style="background-color: #999900">CHI TIẾT SẢN PHẨM</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GvChiTietSP" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" ShowHeader="False" Width="100%">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table width="100%">
                                    <tr>
                                        <td width="101px" rowspan="4">
                                            <asp:Image ID="ImgSanPham" runat="server" Height="110px" 
                                                ImageUrl='<%# "~/Images/" + Eval("Anh") %>' Width="103px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="LblTenSanPham" runat="server" Font-Bold="True" ForeColor="#6600CC" 
                                                Text='<%# Eval("TenSanPham") %>'></asp:Label>
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
                                    <tr>
                                        <td>
                                            <strong>Số lượng hiện có: </strong>
                                            <asp:Label ID="LblSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="1">
                                    <tr>
                                        <td>
                                            <strong>Mô tả sản phẩm:<br /> </strong>
                                            <asp:Label ID="LblMoTa" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
