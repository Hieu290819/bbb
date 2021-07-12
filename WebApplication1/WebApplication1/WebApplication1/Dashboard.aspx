<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Dashboard.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication1.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 503px;
            height: 278px;
        }
        img{
            display: block; margin-left: auto; margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" width="100%">
        <tr>
            <td align="center" height="90px" style="background-color: #666699;">
                <asp:Label runat="server" ID="LblWelcome" Font-Bold="True" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" class="auto-style4" src="Images/xinchao.jpg" />
            </td>
        </tr>
    </table>
</asp:Content>
