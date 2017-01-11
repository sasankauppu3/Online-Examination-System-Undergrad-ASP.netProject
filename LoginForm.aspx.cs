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

public partial class LoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblvalidinfo.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        ValidateUser(txtUserName.Text.Trim(), txtUserPassword.Text.Trim());
        
         
    }

    private void ValidateUser(string p, string p_2)
    {
        SqlConnection sqlcon = new SqlConnection("Data Source=PC2\\SQLEXPRESS;Initial Catalog=OnlineTestDB;Integrated Security=True");
        SqlCommand sqlcmd = new SqlCommand("select * from RegistrationTbl where USERID=@USERID and USERPWD=@USERPWD", sqlcon);
        sqlcmd.Parameters.AddWithValue("@USERID", p);
        sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
        sqlcon.Open();
        SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
        DataSet ds = new DataSet();
      
        sqlcmd.ExecuteScalar();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("LevelForm.aspx?Uname=" + txtUserName.Text);
            Response.Redirect("LevelForm.aspx");

        }
        else
        {
            lblvalidinfo.Visible = true;
            
        }
        sqlcon.Close();
    }
}
