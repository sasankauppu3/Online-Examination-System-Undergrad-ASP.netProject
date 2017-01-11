<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="color:Yellow">Login Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lblvalidinfo" Text="Invalid UserName or Password" runat="server" 
            Font-Bold="True" Font-Size="Smaller" ForeColor="Red" Visible="False"></asp:Label>
                    </h2>

<center>
<table border="0" cellpadding="5" style="width:249px; height: 198px;" 
        align="center">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">
                                        LogIn Here</td>
                                        
                                </tr>
                               
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="UserName" runat="server" Font-Bold="True">UserID</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="txtUserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Password" runat="server" Font-Bold="True">Password</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="txtUserPassword" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                </tr>
                                <tr>
                                
                                <td align="center" colspan="2">
                                        <asp:Button ID="btnLogin" runat="server" CommandName="Login" Text="Sign In" 
                                            ValidationGroup="Login1" Font-Bold="True" 
                                            BackColor="#FFCC99" onclick="btnLogin_Click" />
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <%--<td align="center" colspan="2">
                                        <asp:Button ID="btnLogin" runat="server" CommandName="Login" Text="Sign In" 
                                            ValidationGroup="Login1" Font-Bold="True" 
                                            BackColor="#FFCC99" onclick="btnLogin_Click" />
                                    </td>--%>
                                    <td colspan="2" align="center">
                                        <asp:HyperLink ID="hyperNewuser" runat="server" NavigateUrl="~/RegistrationForm.aspx" Text="New User ? Register Now"></asp:HyperLink>
                                    </td>
                                </tr>
                            </table></center>



</asp:Content>

