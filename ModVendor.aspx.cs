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

public partial class ModVendor : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();

    SqlConnection fcon = new SqlConnection();
    SqlCommand fcmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userown"] != null)
        {
            Label1.Text = Session["userown"].ToString();
        }

        if (DropDownList5.SelectedItem.Text.Equals("Edit"))
        {
            DropDownList2.Visible = true;
           DropDownList6.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            Button3.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
        }

        if (DropDownList5.SelectedItem.Text.Equals("Delete"))
        {
            DropDownList2.Visible = true;
            Button4.Visible = true;
            Label3.Visible = true;
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        DateTime yy = DateTime.Now;
        string pingu = yy.ToString();
        SqlCommand cmd = new SqlCommand( "Update Vendor Set "+ DropDownList6.SelectedItem.Text + " = '"+TextBox1.Text+ "',Modby = '"+Label1.Text+ "',Moddate = '"+pingu+"' where CompanyName = '" + DropDownList2.SelectedItem.Text + "'", con);
        cmd.ExecuteNonQuery();
        MessageBox("Company Updated Successfully");
        con.Close();

        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=ModVendor.aspx";
        this.Page.Controls.Add(meta);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //for the insert part
        SqlConnection fcon = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        fcon.Open();
        DateTime yyy = DateTime.Now;
        string pinguy = yyy.ToString();
        SqlCommand fcmd = new SqlCommand("Insert into Vendor_Delete" + "(Company,Staff,Date) values (@CompanyName,@Staff,@Date)", fcon);
        fcmd.Parameters.AddWithValue("@CompanyName", DropDownList2.SelectedItem.Text);
        fcmd.Parameters.AddWithValue("@Staff", Label1.Text);
        fcmd.Parameters.AddWithValue("@Date", pinguy);
         fcmd.ExecuteNonQuery();

        //Delete Part
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["imanagerconn"].ConnectionString);
        con.Open();
        DateTime yy = DateTime.Now;
        string pingu = yy.ToString();
        SqlCommand cmd = new SqlCommand("Delete from Vendor Where CompanyName = '" + DropDownList2.SelectedItem.Text + "'", con);
        cmd.ExecuteNonQuery();

       


        MessageBox("Company Deleted Successfully");
        con.Close();

        System.Web.UI.HtmlControls.HtmlMeta meta = new HtmlMeta();
        meta.HttpEquiv = "Refresh";
        meta.Content = "1;url=ModVendor.aspx";
        this.Page.Controls.Add(meta);
    }
}