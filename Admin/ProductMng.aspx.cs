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
            if (Session["user"] != null)
                this.LoadProducts();
            else
                Response.Redirect("AdLogin.aspx");
        }
        
    }

    private void LoadProducts()
    {
        using (var k = new Kho())
        {
            var sp = k.DanhSachSPHienThi;
            var index = 0;

            grvSP.DataSource = sp;
            grvSP.DataBind();

            foreach (GridViewRow item in grvSP.Rows)
            {
                var sid = sp[index].SupplierID;
                var cid = sp[index].CategoryID;

                var ncc = k.TimNCC((int)sid);
                var loai = k.TimDM((int)cid);

                var lblTen = item.FindControl("lblSP") as Label;
                var lblLoai = item.FindControl("lblLoai") as Label;

                lblTen.Text = ncc.SupplierName;
                lblLoai.Text = loai.CategoryName;

                index++;
            }
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