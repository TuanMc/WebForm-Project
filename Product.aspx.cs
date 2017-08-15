using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // Gan gia tri CategoryID vao ma
        //load trang theo ma duoc gan:
        var ma = this.RouteData.Values["id"].ToString();

        if (!IsPostBack)
        {
            this.LoadSP(ma);
        }
    }

    private void LoadSP(string ma)
    {
        // Loc dieu khien khi ma == 0:
        if (ma != null)
        {
            using (var k = new Kho())
            {
                // Tim list san pham theo ma duoc gan:
                // Gan ten label theo CategoryName:
                lblTenDM.Text = ma;
                var id = k.DanhSachDM.FirstOrDefault(x => x.CategoryName.Contains(ma)).CategoryID;

                var spTheoMa = k.DanhSachSPHienThi.Where(x => x.CategoryID == id).ToList();

                //  Gan list vua tim duoc vao datalist:
                dtlSP.DataSource = spTheoMa.OrderByDescending(x => x.Price);
                dtlSP.DataBind();
            }
        }
    }

    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        // Chuyen sang trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        // Chuyen sang trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as Button).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }
}