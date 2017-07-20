using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CategoryMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadCategory();
    }

    private void LoadCategory()
    {
        using (var k = new Kho())
        {
            grvLoai.DataSource = k.DanhSachDM;
            grvLoai.DataBind();
        }
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
        #region Them Category

        
        using (var k = new Kho())
        {

            var dm = k.TimDMTheoTen(txtTen.Text);
            if (!(dm == default(Category)))
                lblTB.Text = "Item already exist";
            else
            {
                lblTB.Text = "Item added successfully";
                k.themDM(new Category()
                {
                    CategoryName = txtTen.Text
                });
                this.LoadCategory();
            }
        }
        #endregion
    }
}