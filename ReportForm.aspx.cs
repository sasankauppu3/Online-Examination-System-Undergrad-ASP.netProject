using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;


public partial class ReportForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CrystalReportViewer1.Visible = false;
        LinkButton1.Visible = false;
    }
    protected void btnReport_Click(object sender, EventArgs e)
    {
        CrystalReportViewer1.Visible = true;
        LinkButton1.Visible = true;
        //SqlConnection con = new SqlConnection("Data Source=PC2\\sqlexpress;Initial Catalog=OnlineTestDB;Integrated Security=True");
        //SqlCommand cmd = new SqlCommand("SELECT * from TestReport where UserID='" + txtUserid.Text + "'", con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataSet1 ds = new DataSet1();
        //da.Fill(ds);
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();

        //ReportDocument ReportDoc = new ReportDocument();
        //ReportDoc.Load(Server.MapPath("CrystalReport.rpt"));
        //ReportDoc.SetDatabaseLogon(@"PC2\SQLEXPRESS", "OnlineTestDB");
        //ReportDoc.SetDataSource(ds);
        //CrystalReportViewer1.ReportSource = ReportDoc;
        //ReportDoc.Close();
        //ReportDoc.Dispose();
    }
}
