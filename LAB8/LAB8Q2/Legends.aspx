<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Legends.aspx.cs" Inherits="LAB8Q2.Legends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 3px;
        }
    </style>
</head>
<body style="background-color: #C8C891;
background-position: center; padding: 40px; ">
    <form id="form1" runat="server">

        <div style="display: inline-block; position: absolute; width: 100%; height: 100%; text-align: Justify;">
            <h1 style="font-style: italic; text-decoration: underline">Legends</h1><br /><br />
           Choose a Genre:&nbsp&nbsp <asp:DropDownList ID="genreList" runat="server" AutoPostBack="True"
                OnSelectedIndexChanged="genreSelect"></asp:DropDownList>
            <br /><br />
           Choose an Actor:&nbsp&nbsp<asp:ListBox ID="actorList" 
                runat="server" 
                AutoPostBack="True" Width="144px" Height="58px"></asp:ListBox>
            <br />
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True"
                DataSourceID="Details" CellPadding="5" CellSpacing="5" AutoGenerateColumns="False" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"
                                TextMode="MultiLine" Rows="2" 
                      Text='<%# "Name: "+Eval("name").ToString()+"\nAge: "+Eval("age").ToString() %>'
                                BackColor="#C8C891"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
           <br /><br />
            <asp:Label ID="Label1" runat="server" ></asp:Label>
            <asp:SqlDataSource ID="Details" runat="server"
                ConnectionString="<%$ ConnectionStrings:Legends %>" 
                SelectCommand="select name,age from Legends where Id=@Id" 
                ProviderName="System.Data.SqlClient" >
                <SelectParameters>
                   <asp:ControlParameter ControlID="actorList" Name="Id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
           
        </div>
    </form>
</body>
</html>
