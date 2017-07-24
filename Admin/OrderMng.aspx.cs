using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrderMng : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["user"] != null)
                this.LoadOrder();
            else
                Response.Redirect("AdLogin.aspx");
    }

    private void LoadOrder()
    {
        using (var k = new Kho())
        {
            grvHD.DataSource = k.DanhSachHD;
            grvHD.DataBind();
        }
    }

    protected void lbtnDetail_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Admin/OrderDetailMng.aspx?oid=" + ma);
    }

    protected void btnShipped_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as Button).CommandArgument);
            k.GiaoHD(ma);
            this.LoadOrder();
        }

    }


}