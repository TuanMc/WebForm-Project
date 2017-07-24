using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In_AdLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDN_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            #region Kiem Tra Validation
            var nd = k.TimNDTheoTenDN(txtDN.Text);
            if (nd == default(User) || nd.Password != txtMK.Text || nd.RoleID != 1)
            {
                lblTB.Text = "Incorrect username or password";
                return;
            }

            #endregion

            // Valid:

            Response.Redirect("~/Admin/ProductMng.aspx");
        }

    }
}