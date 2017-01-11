<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportCard.aspx.cs" Inherits="ReportCard" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
    &nbsp
    </p>
    <asp:Label ID="lblUserid" runat="server" Text="Enter UserId" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtUserid" runat="server" ></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="btnReport" runat="server" Text="Generate Report Card" Font-Bold="True" 
            onclick="btnReport_Click" />
    &nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ReportForm.aspx">Click Here for QuestionReport </asp:LinkButton>
    </div>
    <p>
    &nbsp
    </p>
    <div>
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" Height="1035px" ReportSourceID="CrystalReportSource1" 
            Width="901px" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="ReportCard.rpt">
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
