using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OrderDetailMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // Kiem tra dang nhap:
        if (!IsPostBack)
            if (Session["user"] != null)
            {
                if (Request.QueryString["oid"] == null)
                    lbtnBack.Visible = false;
                this.LoadOrderDetail();
            }
            else
                Response.Redirect("~/AdLogin");

    }

    private void LoadOrderDetail()
    {

        // Kiem tra ma chi tiet hoa don:
        int ma = 0;
        int.TryParse(Request.QueryString["oid"], out ma);

        using (var k = new Kho())
        {
            // Xuat toan bo CTHD:
            var order = k.DanhSachCTHD;

            // Xuat CTHD theo ma:
            if (ma != 0)
                order = k.TimCTHD(ma);

            grvCTHD.DataSource = order.OrderByDescending(x=>x.OrderID).ToList();
            grvCTHD.DataBind();

            // Tim va gan thong tin cho cac field:
            foreach (GridViewRow item in grvCTHD.Rows)
            {
                var lblSP = item.FindControl("lblSP") as Label;
                var lblAddr = item.FindControl("lblAddr") as Label;
                var lblPhone = item.FindControl("lblPhone") as Label;
                var hdfMa = item.FindControl("hdfMa") as HiddenField;
                var hdfMaSP = item.FindControl("hdfMaSP") as HiddenField;
                var nd = k.TimND(int.Parse(hdfMa.Value));
                var sp = k.TimSP(int.Parse(hdfMaSP.Value));

                lblSP.Text = sp.ProductName;
                lblAddr.Text = nd.Address;
                lblPhone.Text = nd.Phone;
            }
        }
    }

    protected void grvCTHD_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        // Phan trang:
        grvCTHD.PageIndex = e.NewPageIndex;
        LoadOrderDetail();
    }

    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/OrderMng");
    }
}