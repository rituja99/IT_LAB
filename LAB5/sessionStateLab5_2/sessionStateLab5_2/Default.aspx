<%@ Page Language="C#" CodeFile="Default.aspx.cs" Inherits="sessionStateLab5_2.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>firstPage</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div align="center" style="padding-top: 150px; Font-Size: 30px">
        Enter your name: &nbsp &nbsp<asp:TextBox id="name" runat="server" Width="200px" Height="30px"/>
        <br/><br/>
        Enter your Roll Number: &nbsp &nbsp<asp:TextBox id="roll" runat="server" Width="200px" Height="30px"/>
         <br/><br/>
        Choose a Subject From the List: &nbsp &nbsp<asp:DropDownList id="lstSubj" runat="server" Width="200px" Height="30px"/>
        <br/><br/><br/>
        <asp:Button id="submit" Text="Submit" runat="server" OnClick="submit_Click" BackColor="WhiteSmoke"/>
    </div>       
    </div>
    </form>
</body>
</html>
