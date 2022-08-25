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

public partial class Default2 : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();

    SqlCommand cmdm = new SqlCommand();
    SqlDataAdapter sdam = new SqlDataAdapter();
    DataSet dsm = new DataSet();
    SqlConnection conm = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userown"] != null)
        {
            Label1.Text = Session["userown"].ToString();
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        cmd.CommandText = "Select * from Stock WHERE Numb = (select max(Numb) from Stock)";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Stock");

        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox4.Text = ds.Tables[0].Rows[0]["CurrentStock"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["Datein"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["EnteredBy"].ToString();
        }

        SqlConnection conm = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        conm.Open();
        cmdm.CommandText = "Select * from Deals WHERE Numb = (select max(Numb) from Deals)";
        cmdm.Connection = conm;
        sdam.SelectCommand = cmdm;
        sdam.Fill(dsm, "Deals");

        if (dsm.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = dsm.Tables[0].Rows[0]["Quantity"].ToString();
            TextBox2.Text = dsm.Tables[0].Rows[0]["Vendor"].ToString();
            TextBox3.Text = dsm.Tables[0].Rows[0]["Datein"].ToString();
        }
        con.Close();
        conm.Close();
    }
}