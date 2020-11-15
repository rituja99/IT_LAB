<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actorPage.aspx.cs" Inherits="LAB9Q4.actorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 534px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-position: center top;
            text-align: center; width:100%; height: 100%; padding-top:40px; 
            background-image: url('backimage.jpg'); background-repeat: no-repeat;
            background-attachment: fixed; background-size:cover; position: absolute; font-family: Gabriola; font-size: x-large; font-weight: 700; color: #000000;">
            <h1 style="font-family: Gabriola; font-size: 36pt;">Actor Database</h1>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Select A Genre:&nbsp;&nbsp;&nbsp;&nbsp;  

            <asp:DropDownList ID="genreList" runat="server" AutoPostBack="true"
                DataSourceID="srcgenreList" DataTextField="category" 
                DataValueField="category" AppendDataBoundItems="true" Height="32px" Width="103px">
                <asp:ListItem Text="None" Selected="True" Value="-1"></asp:ListItem>
            </asp:DropDownList>

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Select An Actor:&nbsp;&nbsp;&nbsp; 

            <asp:ListBox ID="actorList" runat="server" Width="109px" DataSourceID="srcactorList"
               AutoPostBack="true" DataTextField="name" DataValueField="Id" Height="52px"></asp:ListBox>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" DataSourceID="actorDetails" 
                AutoGenerateColumns="false" CellPadding="5" CellSpacing="5" BorderStyle="Groove" BorderWidth="2px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ActorID" SortExpression="Id"/>
                    <asp:BoundField DataField="name" HeaderText="Actor Name" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                    <asp:BoundField DataField="category" HeaderText="Genre" />
                </Columns>
            </asp:GridView>
            
            <br />

            <asp:SqlDataSource ID="srcgenreList" runat="server" ProviderName="System.Data.SqlClient" 
               ConnectionString="<%$ ConnectionStrings:Actordb %>" SelectCommand="Select distinct category from Actor" >
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="srcactorList" runat="server" ProviderName="System.Data.SqlClient"
                ConnectionString="<%$ COnnectionStrings:Actordb %>" 
                SelectCommand="Select name, Id from Actor where category=@category">
                <SelectParameters>
                    <asp:ControlParameter ControlID="genreList" PropertyName="SelectedValue" Name="category" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="actorDetails" ProviderName="System.Data.SqlClient" 
                ConnectionString="<%$ ConnectionStrings:Actordb %>" runat="server"
                SelectCommand="Select * from Actor where Id=@Id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="actorList" PropertyName="SelectedValue" Name="Id" />
                </SelectParameters>

            </asp:SqlDataSource>
                
                                  
   </div>
    </form>
</body>
</html>
