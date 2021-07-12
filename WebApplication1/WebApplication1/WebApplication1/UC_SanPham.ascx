<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_SanPham.ascx.cs" Inherits="WebApplication1.UC_SanPham" %>

<asp:DataList ID="DlSanPham" runat="server" Width="100%" BackColor="#FFFFC0" RepeatColumns="3">
    <ItemTemplate>
        <table cellspacing="1" width="100%">
            <tr>
                <td width="106px" rowspan="3">
                    <asp:Image ID="ImgSanPham" runat="server" Height="101px" 
                        ImageUrl='<%# "~/Images/" + Eval("Anh") %>' Width="101px" />
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