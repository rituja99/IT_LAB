<%@ Page Language="C#" AutoEventWireup="true" 
CodeFile="Default.aspx.cs"
Inherits="shoppingCartCookie.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Shopping Cart</title>
</head>
<body>
	<form id="form1" runat="server">
	<div >
                
                
                <asp:Label runat="server" id="userlabel"/> <br/><br/>
                User Name: <asp:TextBox runat="server" id="username" />
                <br/><br/>
                <asp:CheckBoxList id="items" runat="server" />
                <br/><br/>
                <asp:Button id="continueShopping" Text="Continue Shopping" OnClick="nextItem" runat="server"/>
                
                &nbsp &nbsp &nbsp<asp:Button runat="server" id="ViewList" Text="View List" OnClick="ViewList_Click"/> <br/><br/>
                <asp:Label runat="server" id="itemsList" />
                <br/><br/>
                <asp:Button id="refresh" runat="server" Text="New User" OnClick="NewUser" />
                
    </div>
	</form>
</body>
</html>
