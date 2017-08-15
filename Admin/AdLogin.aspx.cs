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
        Session["user"] = null;

        if (!IsPostBack)
        {

            // Set Cookie:

            if (Request.Cookies["un"] != null && Request.Cookies["pass"] != null)
            {
                txtDN.Text = Request.Cookies["un"].Value;
                txtMK.Attributes["value"] = Request.Cookies["pass"].Value;
            }
        }
    }

    protected void btnDN_Click(object sender, EventArgs e)
    {
        #region Check Remeber:
        // Check Remember Me: 

        if (cbDN.Checked)
        {
            Response.Cookies["un"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["pass"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["un"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["pass"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["un"].Value = txtDN.Text.Trim();
        Response.Cookies["pass"].Value = txtMK.Text.Trim();

        #endregion

        #region Check Validation:
        // Check Validation:

        using (var k = new Kho())
        {
            #region Kiem Tra Validation
            var nd = k.TimNDTheoTenDN(txtDN.Text);
            if (nd == default(User) || nd.Password.ToMD5() != txtMK.Text.ToMD5() || nd.RoleID != 1)
            {
                lblTB.Text = "Incorrect username or password";
                return;
            }

            #endregion

            // Valid:

            Session["user"] = txtDN.Text;
            Response.Redirect("~/ProductMng");
        }
        #endregion
    }
}