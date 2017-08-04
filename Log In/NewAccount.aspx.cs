using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In_NewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTao_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var nd = k.TimNDTheoTenDN(txtDN.Text);

            k.ThemND(new User()
            {
                FName = txtFN.Text,
                LName = txtLN.Text,
                Username = txtDN.Text,
                Password = txtMK.Text,
                Email = txtEmail.Text,
                Status = true,
                RoleID = 2
            });
        }
        Response.Redirect("~/Log In/LogIn.aspx");
    }
}