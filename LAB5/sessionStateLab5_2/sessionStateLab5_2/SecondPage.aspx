<%@ Page Language="C#" CodeFile="SecondPage.aspx.cs" Inherits="sessionStateLab5_2.SecondPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>SecondPage</title>
</head>
<body>
	<form id="form1" runat="server">
    <div>
    <div align="center" style="padding-top: 150px; Font-Size: 30px">
        <asp:Label runat="server" id="name"/>
        <br/><br/>
        <asp:Label runat="server" id="roll"/>
        <br/><br/>
        <asp:Label runat="server" id="subj"/>
        <br/><br/>
        <asp:Button runat="server" id="counter" Text="Counter" BackColor="WhiteSmoke" OnClick="incCounter"/> &nbsp &nbsp
        <asp:Label runat="server" id="count"/>
       </div>       
    </div>     
	</form>
</body>
</html>
