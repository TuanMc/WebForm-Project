using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.LoadCTSP();
    }

    private void LoadCTSP()
    {
        // Gan gia tri ma tu querystring:
        // Kiem tra dieu kien => Load san pham theo ma duoc gan:
        var ma = 0;
        int.TryParse(Request.QueryString["ma"].ToString(), out ma);

        if (ma != 0)
        {
            using (var k = new Kho())
            {
                var sp = k.TimSP(ma);
                var dm = k.TimDM((int)sp.CategoryID);
                var ncc = k.TimNCC((int)sp.SupplierID);

                // Breadscrumb:
                lbtnTenDM.Text = dm.CategoryName;
                lbtnTenNCC.Text = ncc.SupplierName;
                lblTenSP.Text = sp.ProductName;

                // Product Details:
                lblDM.Text = dm.CategoryName;
                lblTen.Text = sp.ProductName;
                lblNCC.Text = ncc.SupplierName;
                lblGia.Text = sp.Price.ToString();
                lblTT.Text = sp.Description;
                img.ImageUrl = sp.Picture;
                btnAdd.CommandArgument = (sp.ProductID).ToString();
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var sl = int.Parse(txtSL.Text);
        var ma = int.Parse((sender as Button).CommandArgument);

        using (var g = new Gio())
        {
            // Kiem tra sp theo ma:
            // Cap nhat so luong:
            if (g.TimSPTrongGio(ma) != null)
                g.SuaSL(ma, sl);

            // Them moi:
            else
            {
                g.themMH(new Cart()
                {
                    UserID = null,
                    ProductID = ma,
                    IsInCart = true,
                    Quantity = (short)sl,
                });
            }
        }

        Response.Redirect("~/Home/Cart");
    }

    protected void lbtnTenDM_Click(object sender, EventArgs e)
    {
        // Chuyen sang trang danh muc theo ten danh muc:
        Response.Redirect("~/Home/Product/" + lbtnTenDM.Text);
    }

    protected void lbtnTenNCC_Click(object sender, EventArgs e)
    {
        // Chuyen sang trang nha cung cap theo ten nha cung cap:
        Response.Redirect("~/Home/Supplier/" + lbtnTenNCC.Text);
    }
}