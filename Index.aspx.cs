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
            var index = 1;

            rptSP.DataSource = k.DanhSachDM;
            rptSP.DataBind();

            foreach (RepeaterItem item in rptSP.Items)
            {
                var dtl = item.FindControl("dtlSP") as DataList;

                dtl.DataSource = k.DanhSachSPHienThi.Where(x=>x.CategoryID == index).Take(4);
                dtl.DataBind();

                index++;
            }

        }
    }



    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
        
    }

    protected void btnMua_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as Button).CommandArgument);
        Response.Redirect("ProductDetail.aspx?ma=" + ma);
    }

  
}