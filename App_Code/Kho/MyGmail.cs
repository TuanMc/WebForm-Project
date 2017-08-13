using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

public class MyGmail
{
    public string Host{set;get;}
    public int Port { set; get; }
    public string UserName { set; get; }
    public string Password { set; get; }
    public string From { set; get; }
    public string To { set; get; }
    public string Subject { set; get; }
    public string Body { set; get; }
    //public string AttachFileName { set; get; }

    public bool SendMail()
    {
        MailMessage msg = new MailMessage(From, To, Subject, Body);
        SmtpClient smtp = new SmtpClient(Host, Port); 
        smtp.Credentials = new NetworkCredential(UserName, Password); //lớp “ủy nhiệm thư” của .Net 
        smtp.EnableSsl = true; //Secure Socket layer (tầng mạng) 
        //Attachment attach = new Attachment(HttpContext.Current.Server.MapPath(AttachFileName)); 
        //msg.Attachments.Add(attach); msg.Priority = MailPriority.High; //đặt độ ưu tiên 
        try
        {
            smtp.Send(msg);
            return true;
        }
        catch
        {
            return false;
        }
    }
}