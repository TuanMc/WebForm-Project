using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.LoadUser();
    }

    private void LoadUser()
    {
        using (var k = new Kho())
        {
            grvND.DataSource = k.DanhSachNDHienThi;
            grvND.DataBind();
        }
    }

    protected void lbtnBlock_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as LinkButton).CommandArgument);
            k.XoaND(ma);
            this.LoadUser();
        }
    }

    protected void lbtnEdit_Click(object sender, EventArgs e)
    {
        var uid = int.Parse((sender as LinkButton).CommandArgument);

        Response.Redirect("~/Admin/ChangeUser.aspx?uid=" + uid);
    }
}