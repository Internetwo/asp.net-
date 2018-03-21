using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            string text = Request.QueryString["text"];
            Response.Write("<font color=red>当前用户为：</font>" + text);
            SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
            SqlCommand cmd = new SqlCommand("select * from userinformation where 用户名='" + Request["text"].ToString() + "'and 密码='" + Request["mm"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Label1.Text = ds.Tables[0].Rows[0]["工号"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["身份证号"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["姓名"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["手机号"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["部门"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["用户名"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["密码"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("update userinformation set 手机号=" + TextBox1.Text + " where 用户名='" + Request["text"].ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('数据更新成功！')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("update userinformation set 密码='" + TextBox2.Text + "' where 用户名='" + Request["text"].ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd2 = new SqlCommand("update account set 密码='" + TextBox2.Text + "' where 用户名='" + Request["text"].ToString() + "'", con);
        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('数据更新成功！')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}