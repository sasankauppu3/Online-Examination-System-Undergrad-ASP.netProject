using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsbmitmsg.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       SqlConnection sqlcon=new SqlConnection("Data Source=PC2\\SQLEXPRESS;Initial Catalog=OnlineTestDB;Integrated Security=True");
       
       SqlCommand sqlcmd = new SqlCommand("insert into RegistrationTbl(USERID,USERPWD,CONFPWD,USERNAME,EMAILID) values('" + txtUserId.Text + "','" + txtUserPwd.Text + "','" + txtConfPwd.Text + "','" + txtName.Text + "','" + txtEmailId.Text + "')", sqlcon);
       sqlcon.Open();
       sqlcmd.ExecuteNonQuery();
       sqlcon.Close();
       
       lblsbmitmsg.Visible = true;
       
    }
}
