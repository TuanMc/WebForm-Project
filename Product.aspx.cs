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
        var ma = 0;
        int.TryParse(Request.QueryString["cid"].ToString(), out ma);

        if (!IsPostBack)
        {
            this.LoadSP(ma);
        }
    }

    private void LoadSP(int ma)
    {
        // Loc dieu khien khi ma == 0:
        if (ma != 0)
        {
            using (var k = new Kho())
            {
                // Tim list san pham theo ma duoc gan:
                // Gan ten label theo CategoryName:
                var spTheoMa = k.DanhSachSPHienThi.Where(x => x.CategoryID == ma).ToList();
                var dm = k.TimDM(ma);
                lblTenDM.Text = dm.CategoryName;

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
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        // Chuyen sang trang CTSP theo ma duoc gan:
        var ma = int.Parse((sender as Button).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }
}