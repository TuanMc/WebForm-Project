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
        var ma = 0;
        int.TryParse(Request.QueryString["cid"].ToString(), out ma);

        if (!IsPostBack)
        {
            this.LoadSP(ma);
        }
    }

    private void LoadSP(int ma)
    {
        if (ma != 0)
        {
            using (var k = new Kho())
            {
                var spTheoMa = k.DanhSachSPHienThi.Where(x => x.CategoryID == ma).ToList();

                dtlSP.DataSource = spTheoMa.OrderByDescending(x => x.Price);
                dtlSP.DataBind();

                var dm = k.TimDM(ma);
                lblTenDM.Text = dm.CategoryName;
            }
        }
    }
    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        foreach (DataListItem item in dtlSP.Items)
        {
            var lbtnTenSP = item.FindControl("lbtnTenSP") as LinkButton;
            var ma = int.Parse(lbtnTenSP.CommandArgument);
            Response.Redirect("ProductDetail.aspx?ma=" + ma);
        }

    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        foreach (DataListItem list in dtlSP.Items)
        {
            var btn = list.FindControl("btnMua") as Button;
            var ma = int.Parse(btn.CommandArgument);
            Response.Redirect("ProductDetail.aspx?ma=" + ma);
        }
    }
}