using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Net.Mail;

public partial class Deliver : System.Web.UI.Page
{
    decimal aaa, bbb, balance;
    SqlCommand cmdt = new SqlCommand();
    SqlDataAdapter sdat = new SqlDataAdapter();
    DataSet dst = new DataSet();

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userown"] != null)
        {
            Label6.Text = Session["userown"].ToString();
        }


        Label1.Text = Request.QueryString["DealID"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        cmd.CommandText = "select * from Deals Where DealID = '" + Label1.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;

        sda.Fill(ds, "Deals");

        if (ds.Tables[0].Rows.Count > 0)
        {
            Label2.Text = ds.Tables[0].Rows[0]["Vendor"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
        }


        cmdt.CommandText = "Select * from Stock WHERE Numb = (select max(Numb) from Stock)";
        cmdt.Connection = con;
        sdat.SelectCommand = cmdt;

        sdat.Fill(dst, "Stock");

        if (dst.Tables[0].Rows.Count > 0)
        {
            Label4.Text = dst.Tables[0].Rows[0]["CurrentStock"].ToString();
        }

        con.Close();

        aaa = Convert.ToInt32(Label3.Text.Trim());
        bbb = Convert.ToInt32(Label4.Text.Trim());
        balance = bbb - aaa;
        Label5.Text = balance.ToString();


    }
    string insertRecord(string query)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);

        try
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            return "1";

        }
        catch (Exception ex)
        {
            MessageBox("at INSERT " + ex.Message);
            // UploadStatusLabel.Text = ex.Message;
            return "0" + ex.Message;
        }


    }
    string insertRecorda(string query)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);

        try
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            return "1";

        }
        catch (Exception ex)
        {
            MessageBox("at INSERT " + ex.Message);
            // UploadStatusLabel.Text = ex.Message;
            return "0" + ex.Message;
        }
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
        string femo = "YES";
        string kkk = "Update Deals Set Delivered = '" + femo + "' where DealID ='" + Label1.Text + "'";
        insertRecord(kkk);

        DateTime now = DateTime.Now.AddHours(1);
        string yyy = "Insert into Stock Set CurrentStock = '" + Label5.Text + "',OldStock = '" + Label4.Text + "',Datein ='" + now + "', EnteredBy ='" + Label6.Text + "'";
        insertRecord(yyy);

        MessageBox("Deal Delivered Successfully!");
        var subacct = "GARANTIA";
        var subacctpwd = "Garantia";
        var ownermail = "ayilarafemi@yahoo.com";
        var propertytrust = "08055577687";
        var sendto = "'" + propertytrust + "'";
        var message = "Dear Admin, Staff " + Label6.Text + " Have delivered Deal: " + Label1.Text + " Belonging to:" + Label2.Text + "Quantity is:" + Label3.Text + " New Stock is " + Label5.Text + "Old Stock:" + Label4.Text + " Thanks ";
        var senderid = "iManager";
        string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
        System.Net.WebClient c = new System.Net.WebClient();
        var response = c.DownloadString(apicommand);


        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=deals.aspx";
        this.Page.Controls.Add(meta);
    }
}