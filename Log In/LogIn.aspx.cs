using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            this.LoadLogin();
    }

    private void LoadLogin()
    {
        txtDN.Text = string.Empty;
        txtMK.Text = string.Empty;
        Session["dn"] = null;
    }

    protected void btnDN_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            #region Kiem Tra Validation
            var nd = k.TimNDTheoTenDN(txtDN.Text);
            if (nd == default(User) || nd.Password != txtMK.Text)
            {
                lblTB.Text = "Incorrect username or password";
                return;
            }
            #endregion

            // Valid:

            Session["dn"] = txtDN.Text;
            Response.Redirect("~/Index.aspx");
        }
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Log In/NewAccount.aspx");
    }
}