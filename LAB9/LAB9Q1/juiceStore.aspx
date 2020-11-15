<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="juiceStore.aspx.cs" Inherits="LAB9Q1.juiceStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            width: 100%;
            height: 7%;
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            height: 491px;
            position: absolute;
            left: 48px;
            top: 69px;
            width: 164px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 375px;
            height: 458px;
            margin-left: 371px;
            margin-top: 83px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('backpic.jpg'); background-repeat: no-repeat;
                background-attachment: fixed; background-position: center;background-size:cover; position: absolute;
                       width: 150%; height: 150%">
        <div style=" padding: 20px; font-size: xx-large;
                   font-style: italic; color: #501501; font-family: 'Leelawadee UI'; font-weight: bolder;" class="auto-style1">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server"
                Font-Underline="True" ForeColor="#FFFFCC" Text="JUICE STORE"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div style="padding: 30px; text-align: justify; font-size: medium; font-style: italic; color: #FFFFFF;" class="auto-style2">

                Pick your fruits&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBoxList ID="fruitsList" runat="server" Height="16px" Width="124px">
                </asp:CheckBoxList>
                <br />
                Pick an Ice-Cream<asp:RadioButtonList ID="iceCreamList" runat="server" 
                    Height="16px" Width="144px">
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="display" Width="82px" Text="View Cart" />
                <br />
            </div>
        </div>
            <div class="auto-style3" style="text-align: center; font-size: large; color: #000000; font-style: italic">
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Black" Font-Bold="True"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
