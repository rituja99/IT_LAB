<%@ Page Title="" Language="C#" MasterPageFile="~/mobilePage.Master" AutoEventWireup="true" CodeBehind="firstPage.aspx.cs" Inherits="Lab6Q4.firstPage" StylesheetTheme="Theme1" %>
<asp:Content StylesheetTheme="Theme1"  ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Name of the mobile: <asp:DropDownList ID="mobileList" runat="server" onSelectedIndexChanged="itemSelected" 
        AutoPostBack="True" >
         <asp:ListItem>None</asp:ListItem>
        <asp:ListItem>OnePlus Nord</asp:ListItem>
        <asp:ListItem>Samsung S20</asp:ListItem>
        <asp:ListItem>Oppo F17</asp:ListItem>
        <asp:ListItem>iPhone 11</asp:ListItem>
    </asp:DropDownList><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Second Page" OnClick="nextPage" />
</asp:Content>
