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
        txtFN.Text = string.Empty;
        txtLN.Text = string.Empty;
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
                    FName = txtFN.Text,
                    LName = txtLN.Text,
                    Username = txtDN.Text,
                    Password = txtMK.Text,
                    Email = txtEmail.Text,
                    Status = true,
                    RoleID = 2
                });

                if (kq)
                {
                    Session["dn"] = txtDN.Text;
                    Response.Redirect("~/Index.aspx");
                }
                else
                    this.LoadForm();
            }
        }
    }
}