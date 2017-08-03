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

        var uid = 1; // uid tam


        using (var g = new Gio())
        {
            var mh = g.TimMH(uid);

            // cap nhat sl:
            if (g.TimSPTrongGio(ma) != null)
                g.SuaSL(uid, ma, sl);

            //Them moi
            else
            {
                g.themMH(new Cart()
                {
                    UserID = uid,
                    ProductID = ma,
                    IsInCart = true,
                    Quantity = (short)sl,
                });

            }
        }

        Response.Redirect("~/Cart.aspx");
    }
}