<%@ Page Language="C#" AutoEventWireup="true" 
CodeFile="Default.aspx.cs" Inherits="Employees.Default"%>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Employee Tab</title>
</head>
<body style="background-color: lightblue; align: center">
	<form id="form1" runat="server">
    <div>
                <asp:DropDownList id="ddl1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" Width="150">
                    <asp:ListItem Selected="True" Text="Select a value" Value="select">Select a value</asp:ListItem>
                    
                </asp:DropDownList>
                <br/><br/>
                <asp:Label runat="server" id="labelAns"/>
                <br/><br/>
                <div id="img">
                    <asp:Image ID="image1" runat="server" Width="200"/>
                </div>
                <br/> <br/>
                <asp:Label  runat="server" id="name">Name of the Employee:</asp:Label>
                <asp:TextBox runat="server" id="ename"/>
                <br/><br/>
                <asp:Label runat="server" id="dojLabel">Date Of Joining:</asp:Label>
                <asp:TextBox runat="server" id="doj"/>
                <br/><br/>
                <asp:Button Text="Eligible For Promotion?" Width="200" OnClick="Submit" runat="server"/>
                <asp:Label runat="server" id="y_n"/> 
                
    </div>
	</form>
</body>
</html>
