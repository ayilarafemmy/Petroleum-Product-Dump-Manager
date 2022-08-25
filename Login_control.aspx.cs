using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Drawing;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void MessageBox(string x)
    {
        // Label1.Text = x;
        try
        {
            string message = x;

            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.Append("<script type = 'text/javascript'>");

            sb.Append("window.onload=function(){");

            sb.Append("alert('");

            sb.Append(message);

            sb.Append("')};");

            sb.Append("</script>");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


        }
        catch (Exception ex)
        {

        }



    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        string user = TextBox1.Text.Trim();
        //string em = "select Usename from Staff where Username = user";
        string role = Request.QueryString["roleid"];
        cmd.CommandText = "select * from Staff where Phone='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and Position = 'Level1'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Staff");

        if (ds.Tables[0].Rows.Count > 0)
        {
            string roleid = ds.Tables[0].Rows[0]["Position"].ToString();
            string Email = ds.Tables[0].Rows[0]["Email"].ToString();
            roleid = "Admin";
            //string Position = ds.Tables[0].Rows[0]["Position"].ToString();
            string Username = TextBox1.Text;
            Session["userown"] = TextBox1.Text;
            Session["oruko"] = Email.ToString();



            Response.Redirect("Defaultb.aspx");
        }
        else
        {
            MessageBox("Username or Password is incorrect, Please check and try again. Kindly Note that this access right is for Control Staff Only,Kindly choose the right Profile");
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=Enrty.aspx";
            this.Page.Controls.Add(meta);
        }

        con.Close();
    }
}