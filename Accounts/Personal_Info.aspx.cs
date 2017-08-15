using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Log_In_Personal_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnTao_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var uid = int.Parse(Request.QueryString["newUID"].ToString());
            var nd = k.TimND(uid);
            if (nd != null)
            {
                nd.FName = txtFN.Text;
                nd.LName = txtLN.Text;
                nd.Phone = txtPhone.Text;
                nd.Address = txtAddr.Text;

                k.SuaTTND(nd);

                Response.Redirect("LogIn.aspx");
            }
        }
    }
}