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

public partial class regstaff : System.Web.UI.Page
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
        if (TextBox1.Text == "")
            MessageBox("Enter Full Name");
        if (TextBox2.Text == "")
            MessageBox("Enter Home Address");
        if (TextBox3.Text == "")
            MessageBox("Enter Phone");
        if (TextBox4.Text == "")
            MessageBox("Enter Official Email");


        string name = TextBox3.Text;

        string checkUser = "select Count(*) from Staff where Phone = '" + name + "'";

        SqlCommand command = new SqlCommand(checkUser, con);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        if (temp >= 1)
        {
            MessageBox("Staff Already exists");
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Insert into Staff" + "(Name,Home,Phone,Email,Position,Password,Datein,Staffin) values (@Name,@Home,@Phone,@Email,@Position,@Password,@Datein,@Staffin)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Home", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Position", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
            DateTime tt = DateTime.Now;
            cmd.Parameters.AddWithValue("@Datein", tt);
            cmd.Parameters.AddWithValue("@Staffin", Label1.Text);
            cmd.ExecuteNonQuery();
            MessageBox("Staff Registration Successful!");
            con.Close();
            var subacct = "GARANTIA";
            var subacctpwd = "Garantia";
            var ownermail = "ayilarafemi@yahoo.com";
            var propertytrust = "08058000848";
            var sendto = "'" + TextBox3.Text + "'";
            var message = "Hello " + TextBox1.Text + " You have been registered as a Staff, Your Username is: " + TextBox3.Text + " Password is:" + TextBox5.Text + ". For enq call " + propertytrust + "";
            var senderid = "iManager";
            string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";
            System.Net.WebClient c = new System.Net.WebClient();
            var response = c.DownloadString(apicommand);


            System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=staff.aspx";
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