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
public partial class deals : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userown"] != null)
        {
            Label1.Text = Session["userown"].ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        string name = DropDownList2.SelectedItem.Text;
        string olumide = "Pending";
        string checkUser = "select Count(*) from Deals where Truck = '" + name + "' and Status ='" + olumide + "'";

        SqlCommand command = new SqlCommand(checkUser, con);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        if (temp >= 1)
        {
            MessageBox("Truck Already Has pending Request, Kindly Verify");
        }
        else
        {

            SqlCommand cmd = new SqlCommand("Insert into Deals" + "(Vendor,Quantity,Deadline,Description,Datein,Staffin,DealID,Status,Delivered,Truck) values (@Vendor,@Quantity,@Deadline,@Description,@Datein,@Staffin,@DealID,@Status,@Delivered,@Truck)", con);
            cmd.Parameters.AddWithValue("@Vendor", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Quantity", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Deadline", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Description", TextBox3.Text);
            DateTime now = DateTime.Now.AddHours(1);
            cmd.Parameters.AddWithValue("@Datein", now);
            cmd.Parameters.AddWithValue("@Staffin", Label1.Text);
            string oo = DateTime.Now.ToString().GetHashCode().ToString("x");
            cmd.Parameters.AddWithValue("@DealID", oo);
            String opp = "Pending";
            String pop = "NO";
            cmd.Parameters.AddWithValue("@Status", opp);
            cmd.Parameters.AddWithValue("@Delivered", pop);
            cmd.Parameters.AddWithValue("@Truck", DropDownList2.SelectedItem.Text); 
            cmd.ExecuteNonQuery();
            MessageBox("Deal Logged & Sent for Approval Successfully");
            con.Close();
            var subacct = "GARANTIA";
            var subacctpwd = "Garantia";
            var ownermail = "ayilarafemi@yahoo.com";
            var propertytrust = "08055577687";
            var sendto = "'" + propertytrust + "'";
            var message = "Admin, Staff:" + Label1.Text + " Requested Stock for Vendor:" + DropDownList1.SelectedItem.Text + "Truck No:" + DropDownList2.SelectedItem.Text + " Quantity:" + TextBox1.Text + " DealID:" + oo + "";
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