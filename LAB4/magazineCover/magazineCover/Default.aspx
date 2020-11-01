<%@ Page Language="C#" CodeFile="Default.aspx.cs" Inherits="magazineCover.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Magazine Cover</title>
</head>
<body>
	<form id="form1" runat="server">
    <div>
	<div style="Align: center; BACKGROUND-COLOR: lightblue; Width: 470px; Height: 500px; padding-top: 20px; padding-left: 10px">

        Choose image: &nbsp &nbsp
        <br/>&nbsp &nbsp
        <asp:RadioButtonList id="lstimage" runat="server"/>
        <br/><br/>
        Magazine Title: &nbsp &nbsp
        <asp:TextBox id="title" runat="server"/>
        <br/><br/>
        Any Text on the front cover? &nbsp &nbsp
        <asp:TextBox id="inputText" TextMode="MultiLine" runat="server"/>
        <br/><br/>
        <asp:Button id="generate" Text="Generate Cover" runat="server" BorderColor="Black" OnClick="createCover"/>
        </div>
        <asp:Panel id="pnlCover" runat="server" HorizontalAlign="Center" style="LEFT: 498px; POSITION: absolute; TOP: 16px" Height="500px" Width="470px"/>
        <div style="LEFT: 510px; Height: 500px; TOP: 20px; Width: 470px; POSITION: absolute; " align="center">
        <asp:Label ID="lblTitle" style="Font-Family: Comic Sans MS; Font-size: 40px"  runat="server" Height="150px" Width="256px"></asp:Label>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
         <asp:Label ID="lblInput" style="Font-Family: Comic Sans MS; Font-size: 20px;"  runat="server" Height="150px" Width="256px"></asp:Label>   
    </div> 
    </div>
	</form>
</body>
</html>
