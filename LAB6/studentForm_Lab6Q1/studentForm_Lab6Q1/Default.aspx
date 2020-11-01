<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="studentForm_Lab6Q1.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Election Form</title>
</head>
<body>
    <form id="form1" runat="server" >
    <div align="center" style="padding-top:20px; Font-size: 20px; POSITION: 
                    absolute;background-repeat: no-repeat; background-size: cover; background-attachment:fixed;; 
                    background-image: url(image2.png); height: 200%; width: 100%" >
       
                    <h3 runat="server" id="studentForm">STUDENT HOUSE PRESIDENTIAL ELECTION FORM 2017</h3>
                    <br/><br/>
                
                    Choose a Candidate &nbsp &nbsp <asp:DropDownList runat="server" id="candList" Width="200px" />
                    <br/><br/>
                    Select a House:
                    <br/><br/> <asp:RadioButtonList id="houseList" runat="server" />
                    <br/><br/>
                    <asp:RequiredFieldValidator ErrorMessage="A candidate must be chosen." 
                                                id="reqlist" runat="server" ControlToValidate="candList" Display="None"/>
                
                    <asp:RequiredFieldValidator ErrorMessage="House is a Required Field." 
                                                runat="server" id="reqHouse" ControlToValidate="houseList" Display="None"/>
                
                    Class(Between 6 and 12): &nbsp &nbsp <asp:TextBox runat="server" id="class"/>
                    <br/><br/>
                    <asp:RangeValidator runat="server" ErrorMessage="Class is not in the Given Range." 
                                        id="classValid" ControlToValidate="class" ValidateEmptyText="false"
                                        MaximumValue="12" MinimumValue="6" Type="Integer" Display="None"/>
                    
                    Email ID: &nbsp &nbsp <asp:TextBox runat="server" id="email" />
                    <br/><br/>
                    <asp:RegularExpressionValidator ErrorMessage="Email id is not valid." id="emailValid" 
                                                    ControlToValidate="email" runat="server" ValidateEmptyText="false"
                                                    ValidationExpression="\S+@\S+\.\S+" Display="None"/>
                    
                    Contact Number: &nbsp &nbsp<asp:TextBox runat="server" id="contact" />
                    <br/><br/>
                    <asp:CustomValidator id="contactValid" runat="server" 
                                         ControlToValidate="contact" ValidateEmptyText="false" 
                                         OnServerValidate="contactValid_ServerValidate" Display="None"/>
                  
                    <asp:Button id="submit" Text="Submit" runat="server" OnClick="submit_Click" 
                                Width="100px" Height="30px"/>
                    <br/><br/>
                    <asp:Label id="success" runat="server" />
                    <asp:ValidationSummary id="valid" runat="server" ShowMessageBox="true" ShowSummary="true"  />
                
    </div>
    </form>
</body>
</html>

