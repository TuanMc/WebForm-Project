using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Gan tu khoa tu query vao label de tim kiem:
        var tk = Request.QueryString["q"].ToString();
        lblTK.Text = tk.Trim();

        using (var k = new Kho())
        {
            var sp = k.DanhSachSPHienThi.Where(x => x.ProductName.Trim().ToLower().Contains(tk.Trim().ToLower())).ToList();

            // Loc thong tin:
            if (!String.IsNullOrEmpty(tk) && sp.Count == 0)
                pnlTB.Visible = true;

            // Sau khi loc thong tin thanh cong, gan gia tri vao DataList:
            else
            {
                dtlSP.DataSource = sp.OrderByDescending(x => x.Price);
                dtlSP.DataBind();
            }
        }
    }

    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {

        // Chuyen sang trang CTSP theo ma tu LinkButton:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Home/ProductDetail?ma=" + ma);
    }
}