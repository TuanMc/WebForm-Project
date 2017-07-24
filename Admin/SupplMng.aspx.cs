using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SupplMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["user"] != null)
                this.LoadNCC();
            else
                Response.Redirect("AdLogin.aspx");
    }

    private void LoadNCC()
    {
        using (var k = new Kho())
        {
            grvNCC.DataSource = k.DanhSachNCC;
            grvNCC.DataBind();
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        #region Them Supplier


        using (var k = new Kho())
        {

            var ncc = k.TimNCCTheoTen(txtTen.Text);
            if (!(ncc == default(Supplier)))
                lblTB.Text = "Item already exist";
            else
            {
                lblTB.Text = "Item added successfully";
                k.themNCC(new Supplier()
                {
                    SupplierName = txtTen.Text
                });
                this.LoadNCC();
            }
        }

        #endregion
    }
}