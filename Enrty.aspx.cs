using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Enrty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime oo = DateTime.Now;
        Label1.Text = oo.ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue == "Admin")
        {
            
            Response.Redirect("Login.aspx");
        }

        if (DropDownList1.SelectedValue == "MD")
        {

            Response.Redirect("Login_md.aspx");
        }
        if (DropDownList1.SelectedValue == "Staff")
        {

            Response.Redirect("Login_staff.aspx");
        }
        if (DropDownList1.SelectedValue == "Control")
        {

            Response.Redirect("Login_control.aspx");
        }
        if (DropDownList1.SelectedValue == "Vendor")
        {

            Response.Redirect("Login_Vendor.aspx");
        }
    }
}