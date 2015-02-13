using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Samples.AccessProviders;
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
	/*
        for (int i = 0; i < 10; i++)
        {
            Membership.CreateUser("minhajkk" + i, "-------");
        }
        */
        gv.DataSource = Membership.GetAllUsers();
        gv.DataBind();
    }
}
