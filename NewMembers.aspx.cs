using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Mail;

public partial class NewMembers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        #region email
        /*
            * below section is for sending email
            
        try
        {
            SmtpMail.SmtpServer = "mail.apna-hyderabad.com";
            MailMessage objMail = new MailMessage();
            objMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtsperver", "mail.apna-hyderabad.com");
            objMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 25);
            objMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", 2);
            objMail.From = "minhajkk@yahoo.com";
            objMail.To = "minhaj.kk@gmail.com";
            objMail.Subject = "minhajkk.brinkster.net -  New Recored has been added into database";
            objMail.BodyFormat = MailFormat.Html;
            objMail.Body = "A New Record has been added to the database at minhajkk.brinkster.net";
            SmtpMail.SmtpServer = "mail.apna-hyderabad.com";
            SmtpMail.Send(objMail);
        }
        catch (Exception exp)
        {
            Response.Write(exp.Message.ToString());
            //return;
        }
        
         * end here
         */
        #endregion
        Response.Redirect("/Members.aspx");
    }
    protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Cancel"))
        {
            Response.Redirect("/Members.aspx");
        }
    }
}
