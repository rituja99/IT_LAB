 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityPage.aspx.cs" Inherits="LAB9Q3.CityPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            width: 100%;
            height: 106%;
            left: 10px;
            top: 15px;
        }
        .auto-style2 {
            margin-left: 558px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('city2.jpg'); background-size:cover;
                 background-repeat: no-repeat; background-attachment: fixed; 
                 background-position: center top; padding-top: 10px; display: inline-block;
                 text-align: center; 
                 color: #000000; font-style: italic; font-size: 22pt; font-weight: 800; background-color: #FFFFFF;" class="auto-style1" >
            <h1 style="font-family: Gabriola; font-size: 36pt; font-weight: bold; font-style: italic; color: #000000;">
                City Database
            </h1>
            Choose a State:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
                AppendDataBoundItems="true" >
                <asp:ListItem Selected="True" Text="None" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Choose a City:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server"
                DataSourceID="cityList" DataTextField="CityName" DataValueField="CityName"
                AutoPostBack="true">
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                DataSourceID="cityDetails" Height="16px" Width="247px" BorderColor="Black"
                BorderStyle="Groove" BorderWidth="1px" CellPadding="5" CssClass="auto-style2" 
                ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="CityName" HeaderText="City" />
                    <asp:BoundField DataField="StateID" HeaderText="StateID" />
                </Columns>
            </asp:GridView><br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="cityList" ConnectionString="<%$ ConnectionStrings:cityDB %>"
                ProviderName="System.Data.SqlClient" runat="server"
                SelectCommand="Select CityName, StateID from(Select 'None' as CityName, 
                '-1' as StateID, 1 as tno UNION Select CityName, StateID, 2 as tno
                from City where 
                StateID=(Select StateID from State where StateName=@StateName)) dt order by tno">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="StateName"  />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="cityDetails"  ConnectionString="<%$ ConnectionStrings:cityDB %>"
                ProviderName="System.Data.SqlClient" runat="server" 
                SelectCommand="Select CityName, StateID from City where CityName=@CityName">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" 
                        PropertyName="SelectedValue"
                        Name="CityName" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

