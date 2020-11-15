<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="LAB8Q3.items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 395px;
        }
    </style>
</head>
<body style="background-color: #6AB5FF; background-position:center">
    <form id="form1" runat="server">
        <div style="padding: 20px; text-align: center; position: absolute; display: inline-block; width: 100%; height: 100%;">
            <h1 style="font-style: italic; text-decoration: underline">Product Details</h1>
            Enter the Price For Vanilla:&nbsp&nbsp<asp:TextBox ID="priceTB" runat="server"></asp:TextBox>
            <br /><br /><br />
            <asp:Button ID="update" runat="server" Text="Update" onClick="update_Click"/>
            <br /><br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="5" CellSpacing="5" BorderColor="Black" BorderWidth="2"
                AllowSorting="True" CssClass="auto-style1">
                <Columns>
                    <asp:BoundField DataField="ItemId" HeaderText="Item_Id" SortExpression="ItemId" />
                    <asp:BoundField DataField="flavour" HeaderText="Flavour"  />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="taste" HeaderText="Taste"  />
                </Columns>
            </asp:GridView>
            <br /><br /><br />
            <asp:Label ID="label1" runat="server" />
        </div>
    </form>
</body>
</html>
