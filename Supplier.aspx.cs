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
        var ma = 0;
        int.TryParse(Request.QueryString["sid"].ToString(), out ma);
        if (!IsPostBack)
        {
            this.LoadSP(ma);
        }
    }

    private void LoadSP(int ma)
    {

        // Kiem tra ma truoc khi load:
        if (ma != 0)
        {

            // Gan ten label theo SupplierName:
            // Load thong tin theo ma vao datalist va sap xep theo thu tu Price giam dan:
            using (var k = new Kho())
            {
                var sp = k.DanhSachSPHienThi.Where(x => x.SupplierID == ma).ToList();
                var dm = k.TimNCC(ma);
                lblTenDM.Text = dm.SupplierName;

                dtlSP.DataSource = sp.OrderByDescending(x => x.Price);
                dtlSP.DataBind();
            }
        }
    }

    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        // Chuyen qua trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        // Chuyen qua trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as Button).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }
}