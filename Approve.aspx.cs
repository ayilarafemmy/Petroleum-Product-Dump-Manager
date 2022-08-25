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

public partial class Approve : System.Web.UI.Page
{

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
            Label1.Text = Session["userown"].ToString();
        }


        Label2.Text = Request.QueryString["DealID"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        cmd.CommandText = "select * from Deals Where DealID = '" + Label2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;

        sda.Fill(ds, "Deals");

        if (ds.Tables[0].Rows.Count > 0)
        {
            Label3.Text = ds.Tables[0].Rows[0]["Vendor"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["Deadline"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["Staffin"].ToString();
        }


        cmdt.CommandText = "Select * from Stock WHERE Numb = (select max(Numb) from Stock)";
        cmdt.Connection = con;
        sdat.SelectCommand = cmdt;

        sdat.Fill(dst, "Stock");

        if (dst.Tables[0].Rows.Count > 0)
        {
            Label7.Text = dst.Tables[0].Rows[0]["CurrentStock"].ToString();
        }

        con.Close();

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
        string femo = "Approved";
        string kkk = "Update Deals Set Status = '" + femo + "' where DealID ='" + Label2.Text + "'";
        insertRecord(kkk);

        MessageBox("Deal Approved Successfully, Transaction will be communicated");
        var subacct = "GARANTIA";
        var subacctpwd = "Garantia";
        var ownermail = "ayilarafemi@yahoo.com";
        var propertytrust = Label6.Text;
        var sendto = "'" + propertytrust + "'";
        var message = "Dear Staff, Admin" + Label1.Text + " Have Approved Deal: " + Label2.Text + " Belonging to:" + Label3.Text + "Kindly Go Ahead and Deliver ";
        var senderid = "iManager";
        string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
        System.Net.WebClient c = new System.Net.WebClient();
        var response = c.DownloadString(apicommand);


        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=approvals.aspx";
        this.Page.Controls.Add(meta);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string famo = "Rejected";
        string jjj = "Update Deals Set Status = '" + famo + "' where DealID ='" + Label2.Text + "'";
        insertRecord(jjj);

        MessageBox("Deal Rejected Successfully, Transaction will be communicated");
        var subacct = "GARANTIA";
        var subacctpwd = "Garantia";
        var ownermail = "ayilarafemi@yahoo.com";
        var propertytrust = Label6.Text;
        var sendto = "'" + propertytrust + "'";
        var message = "Dear Staff, Admin" + Label1.Text + " Have Rejected Deal: " + Label2.Text + " Belonging to:" + Label3.Text + " Reason:" + TextBox2.Text + "Kindly Communicate to the Vendor ";
        var senderid = "iManager";
        string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
        System.Net.WebClient c = new System.Net.WebClient();
        var response = c.DownloadString(apicommand);


        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=approvals.aspx";
        this.Page.Controls.Add(meta);
    }
}