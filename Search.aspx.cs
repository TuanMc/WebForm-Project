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
        var tk = Request.QueryString["q"].ToString();
        lblTK.Text = tk;
        if (!String.IsNullOrEmpty(tk))
            using (var k = new Kho())
            {
                dtlSP.DataSource = k.DanhSachSPHienThi.Where(x => x.ProductName.Contains(tk));
                dtlSP.DataBind();
            }
        else
            lblTB.Text = "No Item Found";
    }

    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }

   
    
}