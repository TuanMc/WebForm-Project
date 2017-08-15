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
                Response.Redirect("/AdLogin");
    }

    private void LoadOrder()
    {
        using (var k = new Kho())
        {
            var list = k.DanhSachHD;
            grvHD.DataSource = list;
            grvHD.DataBind();


            foreach (GridViewRow item in grvHD.Rows)
            {
                var hdfMa = item.FindControl("hdfMa") as HiddenField;
                var btn = item.FindControl("btnShipped") as Button;
                var hd = k.TimHD(int.Parse(hdfMa.Value));
                if (hd.OrderStatus == false)
                {
                    btn.Visible = false;
                    btn.Enabled = false;
                }
            }
        }
    }

    protected void lbtnDetail_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/OrderMng/OrderDetailMng?oid=" + ma);
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



    protected void grvHD_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvHD.PageIndex = e.NewPageIndex;
        LoadOrder();
    }
}