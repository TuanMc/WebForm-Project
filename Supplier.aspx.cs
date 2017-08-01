﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Supplier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.LoadSP();
        }
    }

    private void LoadSP()
    {
        using (var k = new Kho())
        {
            var ma = 0;
            int.TryParse(Request.QueryString["sid"].ToString(), out ma);
            if (ma != 0)
            {
                dtlSP.DataSource = k.DanhSachSPHienThi.Where(x => x.SupplierID == ma).ToList();
                dtlSP.DataBind();

                var dm = k.TimNCC(ma);
                lblTenDM.Text = dm.SupplierName;
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

    }
}