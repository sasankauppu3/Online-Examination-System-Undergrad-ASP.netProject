<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       <h2 style="color:Yellow"> Registration Form &nbsp; &nbsp; <asp:Label ID="lblsbmitmsg" 
               runat="server" Text="Submitted Successfully" Font-Bold="True" 
               ForeColor="#009933" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
            ForeColor="Red" Font-Bold="False"></asp:Label></h2>
       
   
    <table style="width: 719px">
    
    <tr><td ><asp:Label ID="lblUserId" runat="server" Text="User ID" Font-Bold="True"></asp:Label></td>
    <td><asp:TextBox ID="txtUserId" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtUserId" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td></tr>
    
    <tr><td ><asp:Label ID="lblUserPwd" runat="server" Text="User Password" Font-Bold="True"></asp:Label></td>
    <td ><asp:TextBox ID="txtUserPwd" runat="server" TextMode="Password" ></asp:TextBox></td></tr>
    
    <tr><td ><asp:Label ID="lblConfPwd" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label></td>
    <td><asp:TextBox ID="txtConfPwd" runat="server" TextMode="Password" ></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtUserPwd" ControlToValidate="txtConfPwd" 
            ErrorMessage="CompareValidator">Not Matched</asp:CompareValidator>
        </td></tr>
        
    
    <tr><td ><asp:Label ID="lblName" runat="server" Text=" User Full Name" Font-Bold="True"></asp:Label></td>
    <td><asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td></tr>
    
    <tr><td ><asp:Label ID="lblEmailId" runat="server" Text="Your Email-Id" Font-Bold="True"></asp:Label></td>
    <td><asp:TextBox ID="txtEmailId" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtEmailId" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email-Id 
        is not well formed</asp:RegularExpressionValidator>
        </td></tr>
    
    <tr>
    <td align="right" colspan="2">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="82px" 
            Font-Bold="True" onclick="btnSubmit_Click" />
    </td>
    </tr>
    
    </table>
    
    
</asp:Content>

