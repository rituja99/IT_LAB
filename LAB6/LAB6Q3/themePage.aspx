<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themePage.aspx.cs" Inherits="Lab6Q3.themePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 200px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body  runat="server" id="pageBody">
    <form id="form1" runat="server">
        <div class="auto-style2" >
           Choose a theme:&nbsp&nbsp<asp:DropDownList ID="themeList" OnSelectedIndexChanged="changeTheme" runat="server" AutoPostBack="True">
                <asp:ListItem>Summer</asp:ListItem>
                <asp:ListItem>Monsoon</asp:ListItem>
            </asp:DropDownList>
             
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True"
                Font-Names="Ink Free" Font-Size="70px" ForeColor="#595959"></asp:Label>
             
        </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
         <div class="auto-style1">
             <asp:Image ID="Image1" runat="server"  />
        </div>
    </form>
</body>
</html>
