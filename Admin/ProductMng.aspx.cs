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

            // Kiem tra tai khoan da dang nhap chua:
            if (Session["user"] != null)
                this.LoadProducts();

            // Tai khoan chua dang nhap -> AdLogin:
            else
                Response.Redirect("/AdLogin");
        }
        
    }

    private void LoadProducts()
    {

        // Dua san pham vao gridview:
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
        // Tim ma tu linkbutton:
        // Xoa san pham theo ma:
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as LinkButton).CommandArgument);
            k.XoaSP(ma);
            this.LoadProducts();
        }

        // Hien thong bao khi xoa thanh cong:
        pnlXoa.Visible = true;
    }

    protected void lbtnEdit_Click(object sender, EventArgs e)
    {

        // Chuyen sang trang thay doi TTSP theo ma:
        var ma = int.Parse((sender as LinkButton).CommandArgument);
        Response.Redirect("~/Admin/ChangeInfo.aspx?pid="+ma);
    }

    protected void grvSP_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        // Phan trang:
        grvSP.PageIndex = e.NewPageIndex;
        LoadProducts();
    }

    protected void lbtnThemSP_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ChangeInfo.aspx");
    }
}