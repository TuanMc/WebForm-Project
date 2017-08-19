using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Supplier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Gan gia tri SupplierID vao ma tu querystring:
        // Load trang theo ma duoc gan:
        var ma = this.RouteData.Values["id"].ToString();
        if (!IsPostBack)
        {
            this.LoadSP(ma);
        }
    }

    private void LoadSP(string ma)
    {

        // Kiem tra ma truoc khi load:
        if (ma != null)
        {

            // Gan ten label theo SupplierName:
            // Load thong tin theo ma vao datalist va sap xep theo thu tu Price giam dan:
            using (var k = new Kho())
            {
                lblTenNCC.Text = ma;
                var ncc = k.DanhSachNCC.FirstOrDefault(x => x.SupplierName.Contains(ma)).SupplierID;
                var sp = k.DanhSachSPHienThi.Where(x => x.SupplierID == ncc).ToList();

                dtlSP.DataSource = sp.OrderByDescending(x => x.Price);
                dtlSP.DataBind();
            }
        }
    }

    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        // Chuyen qua trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        // Chuyen qua trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as Button).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }

    protected void img_Click(object sender, ImageClickEventArgs e)
    {
        // Chuyen qua trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as ImageButton).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }
}