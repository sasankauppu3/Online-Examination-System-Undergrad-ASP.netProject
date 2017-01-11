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

public partial class Level1Exam : System.Web.UI.Page
{
    public static SqlConnection sqlconn;
    public static int incQuestion = 1;
    public static int CurrQue = 1;
    protected string PostBackstr;

    protected void Page_Load(object sender, EventArgs e)
    {
        string Uname = Request.QueryString["Uname"];
        lblUserId.Text = Request.QueryString["Uname"];
       
        btnStart.Visible = true;
        btnNextQues.Visible = false;
       //btnPrevQues.Visible = false;
       //btnFinishExam.Visible = false;
        btnReportCard.Visible = false;
        lblfinish.Visible = false;
        
        txtScore.Visible = false;
        txtAnswerHd.Visible = false;
        lblScore.Visible = false;
        panelTimer.Visible = false;
        
        
        
        PostBackstr = Page.ClientScript.GetPostBackEventReference(this, "time");
        sqlconn = new SqlConnection(ConfigurationManager.AppSettings["sqlconnstr"].ToString());
        
        
        if (IsPostBack)
        {
            string eventArg = Request["__EVENTARGUMENT"];
            if (eventArg == "time")
            {
                getNextQuestion();
            }
                        
        }

        
    }

    private void getNextQuestion()
    {
        if (Convert.ToInt32(Session["counter"].ToString()) <= 40)//10 is a counter which is used for 10 questions
        {
            if (rblOptions.SelectedIndex >= 0)
            {
                if (Session["Answer"].ToString() == rblOptions.SelectedIndex.ToString())
                {
                    int score = Convert.ToInt32(txtScore.Text) + 1;// 1 for mark for each question
                    txtScore.Text = score.ToString();
                    lblScore.Text = Convert.ToString(score);
                }
                else
                {
                   
                    sqlconn.Open();
                    SqlCommand CmdInsertWrong = new SqlCommand("insert into TestReport (UserID,YourQues,WrongAns,Answer) values ('" + lblUserId.Text + "','" + lblQuestion.Text + "','" + rblOptions.Text + "','" + txtAnswerHd.Text + "')", sqlconn);
                    CmdInsertWrong.ExecuteNonQuery();
                    sqlconn.Close();
                }

            }

            CurrQue += 1;
            lblQuestion.Text = CurrQue.ToString();
            txtAnswerHd.Text = CurrQue.ToString();

            getQuestion(CurrQue);
            Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);

        }
        else
        {
            lblScore.Visible = true;
            btnReportCard.Visible = true;
            btnNextQues.Visible = false;
            lblfinish.Visible = true;
        }
    }
    
    private void getQuestion(int no)
    {
        if (incQuestion <= 40)
        {

            string str = "select * from Question where slNo=" + no + "";
            SqlDataAdapter da = new SqlDataAdapter(str, sqlconn);
            DataSet ds = new DataSet();
            da.Fill(ds,"Question");
            da.Fill(ds, "Answer");

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dtr;
                int i = 0;
                while (i < ds.Tables[0].Rows.Count)
                {
                    dtr = ds.Tables[0].Rows[i];
                    Session["Answer"] = Convert.ToString(Convert.ToInt32(dtr["Correct"].ToString()) - 1);
                    lblQuestion.Text = "Q." + incQuestion + " " + dtr["Question"].ToString();
                    txtAnswerHd.Text = dtr["Answer"].ToString();
                    rblOptions.ClearSelection();
                    rblOptions.Items.Clear();

                    rblOptions.Items.Add(dtr["Option1"].ToString());
                    rblOptions.Items.Add(dtr["Option2"].ToString());
                    rblOptions.Items.Add(dtr["Option3"].ToString());
                    rblOptions.Items.Add(dtr["Option4"].ToString());
                    if (rblOptions.Items != null)
                    {
                        rblOptions.Items.Add(dtr["Option5"].ToString());
                    }
                    else
                    {
                        rblOptions.Visible = false;
                    }

                    if (rblOptions.Items != null)
                    {
                        rblOptions.Items.Add(dtr["Option6"].ToString()); 
                    }
                    else
                    {
                        rblOptions.Visible = false;
                    }
                    
                    i++;
                }
                incQuestion += 1;
            }

        }
        
        else
        {
            
            lblScore.Visible = true;
            lblQuestion.Visible = false;
            rblOptions.Visible = false;
            panelTimer.Visible = false;
            btnReportCard.Visible = true;
            btnNextQues.Visible = false;
            lblfinish.Visible = true;



            if (Convert.ToInt32(txtScore.Text) >= 30)
            {
                sqlconn.Open();
                SqlCommand sqlcmd = new SqlCommand("insert into ReportInfo(UserID,Score,Status,Description) values ('" + lblUserId.Text + "','" + lblScore.Text + "',@Status,@Description)", sqlconn);
                sqlcmd.Parameters.Add("@Status", SqlDbType.NVarChar, 40).Value = "Pass";
                sqlcmd.Parameters.Add("@Description", SqlDbType.NVarChar, 800).Value = "Cheers ! your score is satisfactory to promote you for the next level. All the best for the Next Move.";
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();

            }
            else
            {
                sqlconn.Open();
                SqlCommand sqlcmd = new SqlCommand("insert into ReportInfo(UserID,Score,Status,Description) values ('" + lblUserId.Text + "','" + lblScore.Text + "',@Status,@Description)", sqlconn);
                sqlcmd.Parameters.Add("@Status", SqlDbType.NVarChar, 40).Value = "Faill";
                sqlcmd.Parameters.Add("@Description", SqlDbType.NVarChar, 800).Value = "Sorry ! Your score is not satisfactory to promote you for the next level. You can again attempt this level after Seven Days.";
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();
           
            }
            
        
        }



    }
    protected void btnStart_Click1(object sender, EventArgs e)
    {               
        
        int score = Convert.ToInt32(txtScore.Text);
        lblScore.Text = "Score :" + Convert.ToString(score);

        Session["counter"] = "1";
        getQuestion(CurrQue);

        lblScore.Visible = false;
        panelTimer.Visible = true;
        btnStart.Visible = false;
        btnNextQues.Visible = true;
        //btnPrevQues.Visible = true;
        btnReportCard.Visible = false;
        lblfinish.Visible = false;
        
        
    }
    protected void btnNextQues_Click(object sender, EventArgs e)
    {
        getNextQuestion();
        panelTimer.Visible = true;
        //btnPrevQues.Visible = true;
        btnNextQues.Visible = true;
        btnReportCard.Visible = false;
        lblfinish.Visible = false;
        

    }
    protected void btnReportCard_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportCard.aspx");
    }
}
