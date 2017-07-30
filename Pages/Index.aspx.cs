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
            var sploai1 = k.DanhSachSPHienThi.Where(x=>x.CategoryID == 1).ToList();
            dtlSPLoai1.DataSource = sploai1;
            dtlSPLoai1.DataBind();

            var sploai2 = k.DanhSachSPHienThi.Where(x => x.CategoryID == 2).ToList();
            dtlSPLoai2.DataSource = sploai2;
            dtlSPLoai2.DataBind();

            var sploai3 = k.DanhSachSPHienThi.Where(x => x.CategoryID == 3).ToList();
            dtlSPLoai3.DataSource = sploai3;
            dtlSPLoai3.DataBind();
        }
    }



    protected void lbtnTenSP_Click(object sender, EventArgs e)
    {

    }

    protected void btnMua_Click(object sender, EventArgs e)
    {

    }
}