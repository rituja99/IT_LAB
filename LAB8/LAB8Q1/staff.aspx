<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="LAB8Q1.staff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="  background-color: #C2EA8E;">
    <form id="form1" runat="server">

        <div style=" padding: 40px; text-align: justify; width: 100%;height: 100%">
            <h1 style="font-style: italic; text-decoration: underline">HouseKeeping System</h1>
            Select Staff_Id:&nbsp&nbsp <asp:DropDownList ID="staffList" runat="server" 
                OnSelectedIndexChanged="Display" AutoPostBack="True">
            </asp:DropDownList><br /><br />
            Select a City:&nbsp&nbsp <asp:ListBox ID="cityList" runat="server">
                <asp:ListItem>Houston</asp:ListItem>
                <asp:ListItem>Los Angeles</asp:ListItem>
                <asp:ListItem>Dallas</asp:ListItem>
                <asp:ListItem>Columbus</asp:ListItem>
                <asp:ListItem>Seattle</asp:ListItem>
                <asp:ListItem>Atlanta</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:ListBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Update" OnCLick="updateClick"/>
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" 
                runat="server" Height="113px" Width="263px" GridLines="None"></asp:DetailsView>
            <br /><br />
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>
