using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Database_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sql1 = "INSERT INTO Jobs (job_desc) VALUES ('" + TextBox1.Text + "');";
        SqlDataSource1.InsertCommand = sql1;
        SqlDataSource1.Insert();
        SqlDataSource1.DataBind();
    }
}