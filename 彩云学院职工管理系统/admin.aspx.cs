using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    private int GetSelDate()
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("select * from userinformation where " + DropDownList1.Text + " like '%" + TextBox11.Text + "%'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        int count = ds.Tables[0].Rows.Count;
        return count;
    }
    private void GetData()
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("select * from userinformation", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        GetData();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("select * from userinformation where 工号='" + TextBox1.Text + "' or 用户名='" + TextBox6.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            Response.Write("<script>alert('此员工信息已存在！')</script>");
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("insert into userinformation values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            SqlCommand cmd2 = new SqlCommand("insert into account values('" + TextBox6.Text + "','" + TextBox7.Text + "',NULL)", con);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('员工信息添加成功！');window.location.href='admin.aspx'</script>");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Response.Write("<script>alert('请选择字段名称！')</script>");
            DropDownList1.Focus();
        }
        else if (TextBox11.Text == "")
        {
            Response.Write("<script>alert('请输入要查询的值！')</script>");
            TextBox11.Focus();
        }
        else
        {
            if (GetSelDate() == 0)
            {
                Response.Write("<script>alert('无此记录！')</script>");
                GetSelDate();
            }
            else
            {
                GetSelDate();
                Session["check"] = "0";
            }
        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        GetData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string yhm = GridView1.DataKeys[e.RowIndex][5].ToString();
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("delete from userinformation where 用户名='" + yhm + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd1 = new SqlCommand("delete from account where 用户名='" + yhm + "'", con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('删除成功！')</script>");
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string mark = this.GridView1.DataKeys[e.RowIndex][0].ToString();
        string gh = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.ToString();
        string sf = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString();
        string xm = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString();
        string sj = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString();
        string bm = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString();
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("update userinformation set 工号=" + gh + ",身份证号=" + sf + ",姓名='" + xm + "',手机号=" + sj + ",部门='" + bm + "' where 工号=" + mark + "", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('数据更新成功！')</script>");
        GridView1.EditIndex = -1;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=cyxy");
        SqlCommand cmd = new SqlCommand("select * from account where 用户名='" + Session["username"].ToString() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows[0]["密码"].ToString() != TextBox8.Text)
        {
            Response.Write("<script>alert('原始密码不正确！')</script>");
            TextBox8.Focus();
        }
        else if (TextBox9.Text != TextBox10.Text)
        {
            Response.Write("<script>alert('两次密码输入不一致！')</script>");
            TextBox9.Focus();
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("update account set 密码='" + TextBox9.Text + "'where 用户名='" + Session["username"].ToString() + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('密码修改成功！');window.location.href='index.aspx'</script>");
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}