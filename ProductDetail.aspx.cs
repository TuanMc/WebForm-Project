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
        int.TryParse(Request.QueryString["ma"], out ma);

        if (ma != 0)
        {
            using (var k = new Kho())
            {
                var sp = k.TimSP(ma);
                var dm = k.TimDM((int)sp.CategoryID);
                var ncc = k.TimNCC((int)sp.SupplierID);
                lblTenSP.Text = sp.ProductName;
                lblTenDM.Text = dm.CategoryName;
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

        Response.Redirect("~/Cart.aspx");
    }
}