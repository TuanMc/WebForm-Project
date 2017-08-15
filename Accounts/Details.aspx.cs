using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Accounts_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Kiem tra UID:
        if (Session["maUID"] == null)
        {
            pnlDN.Visible = true;
            btnTao.Visible = false;
        }
    }

    protected void btnTao_Click(object sender, EventArgs e)
    {
        // Ma hop le:
        if (Session["maUID"] != null)
        {
            using (var k = new Kho())
            {
                var uid = int.Parse(Session["maUID"].ToString());
                var nd = k.TimND(uid);
                if (nd != null)
                {
                    nd.FName = txtFN.Text;
                    nd.LName = txtLN.Text;
                    nd.Phone = txtPhone.Text;
                    nd.Address = txtAddr.Text;

                    k.SuaTTND(nd);

                    Session["maUID"] = string.Empty;
                    Response.Redirect("/Account");
                }
            }
        }
    }
}