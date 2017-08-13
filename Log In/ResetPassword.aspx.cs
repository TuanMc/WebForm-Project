using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        var un = txtUser.Text;
        using (var k = new Kho())
        {
            var nd = k.TimNDTheoTenDN(un);
            if (nd != null)
            {
                MyGmail mail = new MyGmail()
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    UserName = "tranvanteo1111",
                    Password = "@ManhDuc",
                    Subject = "Reset Password",
                    Body = "Mat Khau: " + nd.Password,
                    From = "tranvanteo1111@gmail.com",
                    To = nd.Email
                };
                var kq = mail.SendMail();
                pnlDung.Visible = true;
            }
            else
                pnlSai.Visible = true;

        }
    }
}
