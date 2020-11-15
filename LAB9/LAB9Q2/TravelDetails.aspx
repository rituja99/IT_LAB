<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelDetails.aspx.cs" Inherits="LAB9Q2.TravelDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            left: 227px;
            top: 22px;
            width: 618px;
            height: 430px;
        }
        .auto-style2 {
            margin-left: 126px;
            margin-top: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="background-image: url('travelbg.jpg'); background-size:cover;
                  background-repeat: no-repeat; background-attachment: fixed;
                background-position: center center; position: absolute; width: 100%; height: 100%">
              
            <div class="auto-style1" style="padding-top: 30px; text-align: center; 
                         display: inline-block;">
                
                <br />
                       <asp:GridView ID="GridView1" DataSourceID="travelDetails" runat="server" AllowSorting="True"
                           AutoGenerateColumns="False" CssClass="auto-style2" Height="16px"
                           BorderStyle="Groove" BorderWidth="1px" Caption="Travel Details: " 
                           CaptionAlign="Top" CellPadding="5" CellSpacing="5" Font-Italic="True" Font-Size="Large" Width="307px">
                           <Columns>
                               <asp:BoundField HeaderText="Place" DataField="Place"  />
                               <asp:BoundField HeaderText="Days" DataField="Days" />
                               <asp:BoundField HeaderText="Cost" DataField="Cost" />
                           </Columns>
             </asp:GridView>

                <asp:SqlDataSource ID="travelDetails" runat="server" ProviderName="System.Data.SqlClient"
                    ConnectionString="<%$ ConnectionStrings:travelDB %>" 
                    SelectCommand="Select * from TourPackage where Place=@Place" >
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="Place" Name="Place" />
                    </SelectParameters>

                </asp:SqlDataSource>

                
                </div>
             
        </div>
    </form>
</body>
</html>
