<%@ Page Title="" Language="C#" MasterPageFile="~/mobilePage.Master" AutoEventWireup="true" CodeBehind="secondPage.aspx.cs" Inherits="Lab6Q4.secondPage"  StylesheetTheme="Theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server"  ></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="back"/>
</asp:Content>
