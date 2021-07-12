<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_DanhMuc.ascx.cs" Inherits="WebApplication1.UC_DanhMuc" %>
<asp:GridView ID="GvDanhMuc" runat="server" Width="100%" 
    AutoGenerateColumns="False" ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellspacing="1" width="100%">
                    <tr>
                        <td style="background-color: #CCCCFF">
                            <asp:Image ID="ImgIconList" runat="server" ImageUrl="~/Images/icon_list.gif" />
                        </td>
                        <td style="background-color: #CCCCFF" width="100%">
                            <asp:HyperLink ID="HplDanhMuc" runat="server" Font-Underline="False" 
                                NavigateUrl='<%# "DanhMuc.aspx?MaDanhMuc=" + Eval("MaDanhMuc") %>' 
                                Text='<%# Eval("TenDanhMuc") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>