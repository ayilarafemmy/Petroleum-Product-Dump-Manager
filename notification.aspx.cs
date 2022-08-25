using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Net;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class notification : System.Web.UI.Page
{
    decimal aaa, bbb, balance;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        




        if (Session["userown"] != null)
        {
            Label4.Text = Session["userown"].ToString();
        }


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        cmd.CommandText = "Select * from Stock WHERE Numb = (select max(Numb) from Stock)";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Stock");

        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0]["CurrentStock"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["OldStock"].ToString();
        }
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = true;
        Label1.Text = TextBox1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        Label2.Visible = true;
        Button3.Visible = true;
        Button4.Visible = true;

        aaa = Convert.ToInt32(Label1.Text.Trim());
        bbb = Convert.ToInt32(TextBox3.Text.Trim());
        balance = aaa + bbb;
        Label3.Text = balance.ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();


        SqlCommand cmd = new SqlCommand("Insert into Stock" + "(CurrentStock,EnteredBy,Datein,OldStock) values (@CurrentStock,@EnteredBy,@Datein,@OldStock)", con);
        cmd.Parameters.AddWithValue("@CurrentStock", Label3.Text);
        cmd.Parameters.AddWithValue("@EnteredBy", Label4.Text);
        DateTime now = DateTime.Now.AddHours(1);
        cmd.Parameters.AddWithValue("@Datein", now);
        cmd.Parameters.AddWithValue("@OldStock", TextBox1.Text);
        cmd.ExecuteNonQuery();
        MessageBox("Stock Update & Logged Successfully");
        con.Close();
        var subacct = "GARANTIA";
        var subacctpwd = "Garantia";
        var ownermail = "ayilarafemi@yahoo.com";
        var propertytrust = "08055577687";
        var sendto = "'" + propertytrust + "'";
        var message = "Admin Staff " + Label4.Text + " Updated Our Stock, New Value: " + Label3.Text + " Old was:" + TextBox1.Text + "";
        var senderid = "iManager";
        string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
        System.Net.WebClient c = new System.Net.WebClient();
        var response = c.DownloadString(apicommand);


        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=notification.aspx";
        this.Page.Controls.Add(meta);


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
    }