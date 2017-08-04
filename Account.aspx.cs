using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Account : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dn"] == null)
            Response.Redirect("~/Requirement.aspx");
        else
        {
            if (!IsPostBack)
                this.LoadTTND();
        }
    }

    private void LoadTTND()
    {
        
        using (var k = new Kho())
        {
            var tenDN = Session["dn"].ToString();
            var nd = k.TimNDTheoTenDN(tenDN);

            txtFN.Text = nd.FName;
            txtLN.Text = nd.LName;
            txtUN.Text = nd.Username;
            txtEmail.Text = nd.Email;
            txtPhone.Text = nd.Phone;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var currentUser = k.TimNDTheoTenDN(Session["dn"].ToString());
            var user = new User()
            {
                UserID = currentUser.UserID,
                FName = txtFN.Text,
                LName = txtLN.Text,
                Username = txtUN.Text,
                Password = txtRePass.Text,
                Email = txtEmail.Text,
                Phone = txtPhone.Text,
                RoleID = 2,
            };
            k.SuaTTND(user);

            lblTB.Text = "Your information is successfully updated";
            this.LoadTTND();
        }
        
    }
}