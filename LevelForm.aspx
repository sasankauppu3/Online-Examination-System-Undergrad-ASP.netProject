<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="LevelForm.aspx.cs" Inherits="LevelForm" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="color:Yellow">Exam Levels &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Wellcome :<asp:Label ID="lblUserId" runat="server" 
            ForeColor="Red" Font-Bold="False"></asp:Label></h2>

<h4 style="color:Green">Have you crossed any of the level yet ?</h4>
<table style="width: 531px; height: 187px;">
<tr>
<td align="center">

    <br />
        <br /> 
        <br />

    <asp:RadioButtonList ID="RBLOption" runat="server" Width="55px" AutoPostBack="true"  
        onselectedindexchanged="RBLOption_SelectedIndexChanged1">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
    <br />
</td>

<td align="center">
<%--<asp:CheckBox ID="chklevel1" runat="server" Text="Level-1" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel2" runat="server" Text="Level-2" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel3" runat="server" Text="Level-3" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel4" runat="server" Text="Level-4" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel5" runat="server" Text="Level-5" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel6" runat="server" Text="Level-6" Font-Bold="True" ForeColor="#990000" /><br />
<asp:CheckBox ID="chklevel7" runat="server" Text="Level-7" Font-Bold="True" ForeColor="#990000" /><br />--%>


    <asp:RadioButtonList ID="RBLLevel" runat="server" >
        <asp:ListItem Value="1">Level-1</asp:ListItem>
        <asp:ListItem Value="2">Level-2</asp:ListItem>
        <asp:ListItem Value="3">Level-3</asp:ListItem>
        <asp:ListItem Value="4">Level-4</asp:ListItem>
        <asp:ListItem Value="5">Level-5</asp:ListItem>
        <asp:ListItem Value="6">Level-6</asp:ListItem>
        <asp:ListItem Value="7">Level-7</asp:ListItem>
    </asp:RadioButtonList>


</td>
<td>
    <asp:Button ID="btnNextLvl" runat="server" Text="Next Level" 
        onclick="btnNextLvl_Click" />
</td>

</tr>

</table>

Second Radio Button List:
 
<%--<asp:radiobuttonlist id="ListingContactTypeRadioButtonList" runat="server" 
        cssclass="selectionlist" repeatcolumns="3" AutoPostBack="True" 
        onselectedindexchanged="ListingContactTypeRadioButtonList_SelectedIndexChanged">
	<asp:ListItem Value="Owner" Selected="True">Owner</asp:ListItem>
	<asp:ListItem Value="Agent">Agent</asp:ListItem>
</asp:radiobuttonlist>--%>


</asp:Content>

