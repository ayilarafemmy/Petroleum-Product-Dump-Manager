using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class staff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userown"] != null)
        {
            Label1.Text = Session["userown"].ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("regstaff.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deact_staff.aspx");
    }
}