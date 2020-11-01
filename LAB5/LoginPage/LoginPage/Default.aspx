<%@ Page Language="C#" CodeFile="Default.aspx.cs" Inherits="LoginPage.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Login</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
    <div align="center" style="padding-top:200px; Font-size: 20px; POSITION: 
                    absolute;background-repeat: no-repeat; background-size: cover; background-attachment:fixed;; 
                    background-image: url(image1.png); height: 100%; width: 100%">        
            <h1>LOGIN PAGE</h1>
            <br/><br/><br/>
            Email ID: &nbsp &nbsp<asp:TextBox id="emailID" runat="server" Width="200px" Height="20px"/>
            <br/><br/>
            Password: &nbsp &nbsp<asp:TextBox runat="server" TextMode="Password" 
                                              id="pswd" Width="200px" Height="20px"/>
            <br/><br/>
            <asp:Button id="submit" runat="server" Text="Login" Style="Font-Size: 20px" 
                        OnClick="submit_Click" Width="200px" Height="30px" BackColor="WhiteSmoke"/>
            <br/><br/>
            <asp:Label id="failed" runat="server"/>
    </div>           
    </div>
	</form>
</body>
</html>
