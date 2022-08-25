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

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var subacct = "GARANTIA";
        var subacctpwd = "Garantia";

        var ownermail = "ayilarafemi@yahoo.com";
        var propertytrust = "08159224989";

        var sendto = "'" + 07031555678 + "','" + propertytrust + "'";
        //var msgtype = "0";


        var message = "Hello " + ownermail + " You have been registered as a Client/Vendor, Your Username is: " + sendto + " Password is:" + sendto + ". For enq call " + propertytrust + "";

        var senderid = "iManager";

        string apicommand = "http://www.smslive247.com/http/index.aspx?cmd=sendquickmsg&owneremail=" + ownermail + "&subacct=" + subacct + "&subacctpwd=" + subacctpwd + "&message=" + message + "&sender=" + senderid + "&sendto=" + sendto + "&msgtype=0";

        System.Net.WebClient c = new System.Net.WebClient();

        var response = c.DownloadString(apicommand);

    }
}