<%@ Page Language="C#" AutoEventWireup="true" 
CodeFile="Default.aspx.cs" Inherits="carManufacturer_QueryString.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Car Manufacturer</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>	
        <asp:DropDownList runat="server" OnSelectedIndexChanged="linkModel" AutoPostBack="true" id="carManufacturerList" Width="200px"/>
        <br/><br/>
        <asp:TextBox id="model_name" runat="server"/>
        <br/><br/>
        <asp:Button id="Display" Text="Display" onclick="display" runat="server"/>
        <br/><br/>
        <asp:Label id="invalid" runat="server"/> 
    </div>
	</form>
</body>
</html>

