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
        if (!IsPostBack)
        {
            this.LoadForm();
        }
    }

    private void LoadForm()
    {
        txtDN.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtMK.Text = string.Empty;
        txtXN.Text = string.Empty;
    }

    protected void btnTao_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var nd = k.TimNDTheoTenDN(txtDN.Text);

            if (nd == null)
            {
                var kq = k.ThemND(new User()
                {
                    Username = txtDN.Text,
                    Password = txtXN.Text,
                    Email = txtEmail.Text,
                    Status = true,
                    RoleID = 2
                });

                if (kq)
                {
                    Session["maUID"] = k.TimNDTheoTenDN(txtDN.Text).UserID;
                    Response.Redirect("~/Account/NewAccount/Details");
                }
                else
                    this.LoadForm();
            }
        }
    }
}