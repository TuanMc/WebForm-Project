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
        int.TryParse(Request.QueryString["ma"],out ma);

        if (ma != 0)
        {
            using (var k = new Kho())
            {
                var sp = k.TimSP(ma);
                var ncc = k.TimNCC((int)sp.SupplierID);
                lblTenSP.Text = sp.ProductName;
                lblTen.Text = sp.ProductName;
                lblNCC.Text = ncc.SupplierName;
                lblGia.Text = sp.Price.ToString();
                lblTT.Text = sp.Description;
                img.ImageUrl = sp.Picture;
            }
        }
        
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Cart.aspx");
    }
}