using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            this.LoadTrang();
    }

    private void LoadTrang()
    {
        using (var k = new Kho())
        {
            // Gan gia tri cho Repeater:
            rptSP.DataSource = k.DanhSachDM;
            rptSP.DataBind();

            foreach (RepeaterItem item in rptSP.Items)
            {
                // Tim cac field va gan gia tri cho tung field:
                var dtl = item.FindControl("dtlSP") as DataList;
                var hdf = item.FindControl("hdfMa") as HiddenField;
                var maDM = int.Parse(hdf.Value);

                dtl.DataSource = k.DanhSachSPHienThi.Where(x => x.CategoryID == maDM).OrderByDescending(x => x.Price).Take(4);
                dtl.DataBind();
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


