<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Trangchu.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplication1.TrangTru" %>

<%@ Register src="UC_SanPham.ascx" tagname="SanPham" tagprefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:SanPham ID ="UCSP" runat="server" />
</asp:Content>
