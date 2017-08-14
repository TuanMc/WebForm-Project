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
        Session["dn"] = null;

        if (!IsPostBack)
        {
            // Set Cookie:

            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
            {
                txtDN.Text = Request.Cookies["UserName"].Value;
                txtMK.Attributes["value"] = Request.Cookies["Password"].Value;
            }
        }
    }
    
    protected void btnDN_Click(object sender, EventArgs e)
    {
        #region Check remember:
        // Check Remember Me: 

        if (cbDN.Checked)
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
        }
        else
        {
            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

        }
        Response.Cookies["UserName"].Value = txtDN.Text.Trim();
        Response.Cookies["Password"].Value = txtMK.Text.Trim();

        #endregion
        
        #region Check Validation:
        // Check Validation:

        using (var k = new Kho())
        {
            #region Kiem Tra Validation
            var nd = k.TimNDTheoTenDN(txtDN.Text);
            if (nd == default(User) || nd.Password.ToMD5() != txtMK.Text.ToMD5() || nd.Status == false)
            {
                lblTB.Text = "Incorrect username or password";
                return;
            }
            #endregion

            // Valid:

            Session["dn"] = txtDN.Text;
            Response.Redirect("~/Home");
        }
        #endregion
    }
}