<%@ Page Language="C#" MasterPageFile="~/LevelMaster.master" AutoEventWireup="true" CodeFile="Level1Exam.aspx.cs" Inherits="Level1Exam" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table>

<tr><td style="color: #000000; font-weight: bold">Wellcome :<asp:Label ID="lblUserId" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label> 
<center><p>
        <asp:Button ID="btnStart" runat="server" Text="Click Here to Start Exam" 
        Font-Bold="true" onclick="btnStart_Click1" ForeColor="#CC3300"  />
        
    </p></center></td></tr>
        <tr>
        <td align="right">
            <asp:ScriptManager ID="scriptMngr2" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
            <asp:UpdatePanel ID="updatepanl2" runat="server">
            <ContentTemplate>
            
            <asp:TextBox ID="txtScore" runat="server" Font-Bold="True" >0</asp:TextBox>
            <asp:Label ID="lblScore" runat="server" Text="Score" Font-Bold="True"></asp:Label>
            <asp:TextBox ID="txtAnswerHd" runat="server" Width="86px"></asp:TextBox>
            
            
            </ContentTemplate>
            </asp:UpdatePanel>            
           
            <asp:Panel ID="panelTimer" runat="server">
                       <span id="cd" style ="font-weight: bold; color: #0000FF; background-color: #FFFFD9;"> </span>
            </asp:Panel>
                    
        </td>
        </tr>
<tr><td>

<asp:UpdatePanel ID="updatpanl1" runat="server">
<ContentTemplate>

<asp:Panel ID="panel1" runat="server" ScrollBars="Both" Height="111px" 
        Width="912px">
<asp:Label ID="lblQuestion" runat="server" Font-Bold="True"></asp:Label>
	&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>

<%--<p align="right"><asp:CheckBox ID="chkShowLater" runat="server" Text="Show Later" 
        Font-Bold="True" ForeColor="#006600" /></p>--%>
        <p align="center"><asp:Label ID="lblfinish" runat="server" Text="Your Exam is Finished." ForeColor="Red" Font-Bold="true"></asp:Label></p>
<asp:Panel ID="panel2" runat="server" ScrollBars="Both" Height="172px" 
        Width="909px">
    <asp:RadioButtonList ID="rblOptions" runat="server" Font-Bold="True">
    
    </asp:RadioButtonList>
	&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
<center>
<asp:Panel ID="panelAllbtn" runat="server">

<%--<asp:Button ID="btnPrevQues" runat="server" Text="Previous Question" 
        Font-Bold="True" Width="127px" />--%>
&nbsp;
<asp:Button ID="btnNextQues" runat="server" Text="Next Question" Font-Bold="True" 
        onclick="btnNextQues_Click" Width="112px" />
    &nbsp;
<%--<asp:Button ID="btnFinishExam" runat="server" Text="Finish Exam" Font-Bold="True" 
        Width="92px" />--%></asp:Panel></center>

</ContentTemplate>

</asp:UpdatePanel>

</td></tr>

<%--<tr>
<td align="center">
<asp:Button ID="btnPrevQues" runat="server" Text="Previous Question" 
        Font-Bold="True" />
&nbsp;
<asp:Button ID="btnNextQues" runat="server" Text="Next Question" Font-Bold="True" 
        onclick="btnNextQues_Click" />
&nbsp;
<asp:Button ID="btnSave" runat="server" Text="Save" Font-Bold="True" />
&nbsp;
<asp:Button ID="btnFinishExam" runat="server" Text="Finish Exam" Font-Bold="True" />
</td>

</tr>--%>

</table>
</div>

<div>
<table>
<tr>
<td>
<asp:Button ID="btnReportCard" runat="server" Text="Get ReportCard" 
        Font-Bold="True" Width="911px" onclick="btnReportCard_Click" />
</td>

</tr>

</table>

</div>
        

</asp:Content>

