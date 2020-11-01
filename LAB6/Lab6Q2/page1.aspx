<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" 
    AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="Lab6Q2.page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 151%;
            height: 389px;
        }
        .auto-style8 {
        width: 1056px;
        position: absolute;
        height: 51px;
    }
    .auto-style9 {
        width: 1056px;
        height: 191px;
    }
    .auto-style10 {
        width: 258px;
    }
    .auto-style11 {
        width: 902px;
        height: 356px;
    }
    .auto-style12 {
        width: 677px;
        position: absolute;
        height: 51px;
    }
    .auto-style13 {
        width: 677px;
        height: 191px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <table class="auto-style11">
        <tr>
            <td class="auto-style12" style="vertical-align: top; text-align: left;">&nbsp;Category:&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Mobiles</asp:ListItem>
                    <asp:ListItem>Laptops</asp:ListItem>
                    <asp:ListItem>Printers</asp:ListItem>
                </asp:DropDownList>
                
            </td>
            </td>
             <td class="auto-style13" style="text-align: center">
               <asp:Image runat="server" class="auto-style10"  id="image" /></td>
             
          
        </tr>
        <tr>
           

              <td class="auto-style8" style="vertical-align: top; text-align: left;">Vendor:&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem>Samsung</asp:ListItem>
                    <asp:ListItem>Dell</asp:ListItem>
                    <asp:ListItem>HP</asp:ListItem>
                    <asp:ListItem>Apple</asp:ListItem>
                </asp:DropDownList>

              </td>
            <td class="auto-style9" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </td>
        </tr>

    </table>

    

</asp:Content>
