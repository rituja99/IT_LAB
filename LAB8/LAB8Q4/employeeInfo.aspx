<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeInfo.aspx.cs" Inherits="LAB8Q4.employeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            width: 150%;
            height: 180%;
            left: 20px;
            top: 17px;
        }
        .auto-style3 {
            height: 182px;
            position: absolute;
            left: 19px;
            top: 91px;
            width: 380px;
        }
        .auto-style8 {
            width: 220px;
            height: 39px;
            text-align: center;
        }
        .auto-style13 {
            width: 214px;
            height: 39px;
            text-align: justify;
        }
        .auto-style14 {
            width: 420px;
            height: 54px;
            text-align: center;
        }
        .auto-style15 {
            width: 214px;
            height: 84px;
            text-align: justify;
            position: absolute;
        }
        .auto-style16 {
            height: 43px;
            position: absolute;
            left: 19px;
            top: 501px;
            width: 392px;
        }
        .auto-style18 {
            height: 110px;
            position: absolute;
            left: 19px;
            top: 436px;
            width: 391px;
        }
        .auto-style19 {
            width: 214px;
            height: 54px;
            text-align: center;
        }
        .auto-style21 {
            margin-left: 480px;
            margin-top: 0px;
        }
    </style>
</head>
<body style="background-position: center; background-color: #77BBBB;">
    <form id="form1" runat="server">
        <div style="padding: 20px; text-align: justify; " class="auto-style2">
            <h1 style="font-style: italic; text-decoration: underline">Emloyee Details</h1>
            <br /><br /><br />
            <table class="auto-style3">
                <tr>
                    
                    <td style="text-align: justify" class="auto-style13">Enter the name:&nbsp;</td>
                    <td class="auto-style8"> <asp:TextBox ID="name" runat="server"/>
                        </td>
                </tr>
                <tr>
                    
                    <td class="auto-style13">Enter the Company-Name:&nbsp;</td>
                    <td class="auto-style8"> <asp:TextBox ID="companyName" runat="server"/>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style13">Enter the Salary</td>
                    <td class="auto-style8"> <asp:TextBox ID="salary" runat="server"/>
                    </td>
                </tr>
                 <tr>
                    
                    <td class="auto-style13" style="text-decoration: underline">Residential Details:</td>
                    <td class="auto-style8"> </td>
                </tr>
                 <tr>
                    
                    <td class="auto-style13">Enter the Street:</td>
                    <td class="auto-style8"> <asp:TextBox ID="street" runat="server"/>
                    </td>
                </tr>
                 <tr>
                    
                    <td class="auto-style13">Enter the City:&nbsp&nbsp&nbsp&nbsp;</td>
                    <td class="auto-style8"> <asp:TextBox ID="city" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"> <asp:Button ID="Button1" runat="server"
                        Text="Insert" OnClick="insert_Click"/></td>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
                </table>
                 <table class="auto-style18">
                <tr>
                     <td class="auto-style15" 
                         style="text-decoration: underline; text-align: justify;  
                              ">Retrieve Records based on Company-Name
                     </td>
                </tr>
                 </table>
                 <table class="auto-style16">
                 <tr>
                    <td class="auto-style13">Enter the Company-Name:&nbsp&nbsp&nbsp&nbsp;</td>
                    <td class="auto-style8"> <asp:TextBox ID="searchEmployee" runat="server"/>
                    </td>
                </tr>
                     <tr>
                    <td class="auto-style19"> <asp:Button ID="Button2" runat="server"
                        Text="Retrieve" OnClick="retrieve_Click"/></td>
                </tr>
                     </table>
            

            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21" Height="392px" Width="447px">
                <asp:Label ID="Label3" runat="server" Text="Employee Details:"></asp:Label><br /><br />
                <asp:GridView ID="GridView2" runat="server"
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" 
                    CellSpacing="5" Height="106px" Width="360px">
                    <Columns>
                        <asp:BoundField DataField="person_name" HeaderText="Name" />
                        <asp:BoundField DataField="City" HeaderText="City" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </asp:Panel>
            

        </div>
    </form>
</body>
</html>
