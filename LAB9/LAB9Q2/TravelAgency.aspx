<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelAgency.aspx.cs" Inherits="LAB9Q2.TravelAgency" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 619px;
            height: 384px;
            margin-left: 59px;
            position: absolute;
            left: 168px;
            top: 66px;
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
                <br />
                <h1 style="font-family: Gabriola; font-weight: bold; 
                           font-size: x-large; font-style: italic">
                    Where do you want to travel:
                </h1>
                <br />
                     <asp:ListBox ID="tourListBox" DataSourceID="tourList" DataTextField="Place" DataValueField="Place"
                         runat="server" Width="208px" BackColor="#C1D2F7" Font-Italic="False" Font-Names="Gabriola" Font-Size="Larger" Height="93px"></asp:ListBox>
                <br /><br />
                <asp:Button ID="Button1" runat="server" 
                    OnClick="details_Click" Text="View Details" BackColor="#AEC4F4" 
                    Font-Bold="True" Font-Italic="True" />
                <asp:SqlDataSource ID="tourList" 
                             ConnectionString="<%$ ConnectionStrings:travelDB %>"
                    ProviderName="System.Data.SqlClient" runat="server"
                    SelectCommand="Select Place from TourPackage">
                </asp:SqlDataSource> 

            </div>
              
        </div>
    </form>
</body>
</html>
