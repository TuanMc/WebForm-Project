using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.LoadProducts();
            
        }
        
    }

    private void LoadProducts()
    {
        using (var k = new Kho())
        {
            grvSP.DataSource = k.DanhSachSPHienThi;
            grvSP.DataBind();
        }
        
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as LinkButton).CommandArgument);
            k.XoaSP(ma);
            this.LoadProducts();
        }

    }

    protected void lbtnEdit_Click(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Admin/ChangeInfo.aspx?id="+ma);
    }
}