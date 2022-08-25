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


public partial class Vendorreg : System.Web.UI.Page
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


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        cmd.CommandText = "Select * from Vendor WHERE CompanyID = (select max(CompanyID) from Vendor)";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Vendor");

        if (ds.Tables[0].Rows.Count > 0)
        {
            Label2.Text = ds.Tables[0].Rows[0]["CompanyID"].ToString();
        }
        int lol = Int32.Parse(Label2.Text);
        int ACTION = lol + 1;
        Label3.Text = ACTION.ToString();
        con.Close();
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
        if (TextBox1.Text == "")
            MessageBox("Enter Company Name");
        if (TextBox2.Text == "")
            MessageBox("Enter Contact Person's Name");
        if (TextBox3.Text == "")
            MessageBox("Enter Contact Person's Phone");
        if (TextBox4.Text == "")
            MessageBox("Enter Official Email");


        string name = TextBox1.Text;

        string checkUser = "select Count(*) from Vendor where CompanyName = '" + name + "'";

        SqlCommand command = new SqlCommand(checkUser, con);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        if (temp >= 1)
        {
            MessageBox("Company Already exists");
        }
        else
        {

            SqlCommand cmd = new SqlCommand("Insert into Vendor" + "(CompanyName,CompanyContactPer,CompanyPhone,CompanyEmail,ICEContact,ICEPhone,CompanyID,Staffin,Description,Datein,Password) values (@CompanyName,@CompanyContactPer,@CompanyPhone,@CompanyEmail,@ICEContact,@ICEPhone,@CompanyID,@Staffin,@Description,@Datein,@Password)", con);
            cmd.Parameters.AddWithValue("@CompanyName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@CompanyContactPer", TextBox2.Text);
            cmd.Parameters.AddWithValue("@CompanyPhone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@CompanyEmail", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ICEContact", TextBox8.Text);
            cmd.Parameters.AddWithValue("@ICEPhone", TextBox9.Text);
            cmd.Parameters.AddWithValue("@CompanyID", Label3.Text);
            cmd.Parameters.AddWithValue("@Staffin", Label1.Text);
            cmd.Parameters.AddWithValue("@Description", TextBox10.Text);
            DateTime tt = DateTime.Now;
            cmd.Parameters.AddWithValue("@Datein", tt);
            cmd.Parameters.AddWithValue("@Password", TextBox3.Text);
            cmd.ExecuteNonQuery();
            MessageBox("Vendor Registration Successful!");
            con.Close();

            var subacct = "GARANTIA";
            var subacctpwd = "Garantia";
            var ownermail = "ayilarafemi@yahoo.com";
            var propertytrust = "08058000848";
            var sendto = "'" + TextBox3.Text + "'";
            var message = "Hello " + TextBox1.Text + " You have been registered as a Client/Vendor, Your Username is: " + Label3.Text + " Password is:" + TextBox3.Text + ". For enq call " + propertytrust + "";
            var senderid = "iManager";
            string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
            System.Net.WebClient c = new System.Net.WebClient();
            var response = c.DownloadString(apicommand);


            System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=vendors.aspx";
            this.Page.Controls.Add(meta);




        }
    }
    }
