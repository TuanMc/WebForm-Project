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

        // Kiem tra dang nhap:
        if (!IsPostBack)
            if (Session["user"] != null)
                this.LoadOrder();
            else
                Response.Redirect("/AdLogin");
    }

    private void LoadOrder()
    {

        // Load thong tin hoa don:
        using (var k = new Kho())
        {
            var list = k.DanhSachHD;
            grvHD.DataSource = list.OrderByDescending(x=>x.OrderID).ToList();
            grvHD.DataBind();


            foreach (GridViewRow item in grvHD.Rows)
            {
                var hdfMa = item.FindControl("hdfMa") as HiddenField;
                var btn = item.FindControl("btnShipped") as Button;
                var lblShip = item.FindControl("lblShip") as Label;
                var hd = k.TimHD(int.Parse(hdfMa.Value));
                if (hd.OrderStatus == false)
                {
                    lblShip.Visible = true;
                    btn.Visible = false;
                    btn.Enabled = false;
                }
            }
        }
    }

    protected void lbtnDetail_Click(object sender, EventArgs e)
    {

        // Chuyen sang trang chi tiet hoa don theo ma:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/OrderMng/OrderDetailMng?oid=" + ma);
    }

    protected void btnShipped_Click(object sender, EventArgs e)
    {

        // Xac nhan da ship san pham:
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as Button).CommandArgument);

            k.GiaoHD(ma);
            Response.Redirect("/OrderMng");
        }

    }

    protected void grvHD_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // Phan trang:
        grvHD.PageIndex = e.NewPageIndex;
        LoadOrder();
    }
}