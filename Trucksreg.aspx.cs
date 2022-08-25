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

public partial class Trucksreg : System.Web.UI.Page
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
            MessageBox("Enter Truck Plate No");
        string name = TextBox1.Text;

        string checkUser = "select Count(*) from Trucks where Truck = '" + name + "'";

        SqlCommand command = new SqlCommand(checkUser, con);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        if (temp >= 1)
        {
            MessageBox("Truck Already exists");
        }
        else
        {

            SqlCommand cmd = new SqlCommand("Insert into Trucks" + "(Vendor,Truck,Description,Staffin,Datein) values (@Vendor,@Truck,@Description,@Staffin,@Datein)", con);
            cmd.Parameters.AddWithValue("@Vendor", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Truck", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Description", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Staffin", Label1.Text);
            DateTime tt = DateTime.Now;
            cmd.Parameters.AddWithValue("@Datein", tt);
            cmd.ExecuteNonQuery();
            MessageBox("Truck Registration Successful!");
            con.Close();

            System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=vendors.aspx";
            this.Page.Controls.Add(meta);
        }
        }
    }