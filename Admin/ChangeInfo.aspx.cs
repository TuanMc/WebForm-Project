using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangeInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = 0;
        int.TryParse(Request.QueryString["pid"], out id);

        // Kiem tra dang nhap:
        // Phan loai chuc nang (them moi/ sua):
        if (!IsPostBack)
        {
            if (Session["user"] != null)
            {
                if (id == 0)
                    this.LoadSP();
                else
                    this.LoadSPTheoMa(id);
            }
            else
                Response.Redirect("~/AdLogin");
        }
    }

    // Sua thong tin san pham:
    private void LoadSPTheoMa(int id)
    {
        using (var k = new Kho())
        {
            #region Binding TextBox
            var sp = k.TimSP(id);
            txtName.Text = sp.ProductName;
            txtGia.Text = sp.Price.ToString();
            txtDescription.Text = sp.Description;
            imgSP.ImageUrl = sp.Picture;

            #endregion

            #region Binding Category
            var categoryList = k.DanhSachDM;

            ddlCategory.DataSource = categoryList;
            ddlCategory.DataValueField = "CategoryID";
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataBind();
            ddlCategory.SelectedValue = sp.CategoryID.ToString();

            #endregion

            #region Binding Supplier
            var supplierList = k.DanhSachNCC;

            ddlSupplier.DataSource = supplierList;
            ddlSupplier.DataValueField = "SupplierID";
            ddlSupplier.DataTextField = "SupplierName";
            ddlSupplier.DataBind();
            ddlSupplier.SelectedValue = sp.SupplierID.ToString();

            #endregion

        }
    }

    // Them Moi:
    private void LoadSP()
    {
        #region Empty String
        txtName.Text = string.Empty;
        txtDescription.Text = string.Empty;
        txtGia.Text = string.Empty;
        #endregion

        using (var k = new Kho())
        {
            imgSP.Visible = false;

            #region Binding Category

            var categoryList = k.DanhSachDM;


            categoryList.Insert(0, new Category()
            {
                CategoryID = 0,
                CategoryName = ""
            });

            ddlCategory.DataSource = categoryList;
            ddlCategory.DataValueField = "CategoryID";
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataBind();
            #endregion

            #region Binding Supplier
            var supplierList = k.DanhSachNCC;
            supplierList.Insert(0, new Supplier()
            {
                SupplierID = 0,
                SupplierName = ""
            });

            ddlSupplier.DataSource = supplierList;
            ddlSupplier.DataValueField = "SupplierID";
            ddlSupplier.DataTextField = "SupplierName";
            ddlSupplier.DataBind();

            #endregion

        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        using (var k = new Kho())
        {
            #region Sua Product
            var id = 0;
            int.TryParse(Request.QueryString["pid"], out id);
            if (id != 0)
            {
                var sp = k.TimSP(id);
                var path = sp.Picture;

                if (fulImg.HasFile == true)
                {
                    var str = fulImg.FileName;
                    fulImg.PostedFile.SaveAs(Server.MapPath(".") + "/Uploads/" + str);
                    path = "~/Admin/Uploads/" + str.ToString();
                }
                 
                k.SuaSP(new Product()
                {
                    ProductID = id,
                    ProductName = txtName.Text,
                    Price = int.Parse(txtGia.Text),
                    CategoryID = int.Parse(ddlCategory.SelectedValue),
                    SupplierID = int.Parse(ddlSupplier.SelectedValue),
                    Description = txtDescription.Text,
                    Picture = path
                });

            pnlUpdate.Visible = true;
        }
            #endregion

            #region Them Product
            else
            {
            if (fulImg.HasFile == true)
            {
                pnlImg.Visible = true;
            }

            else
            {
                string str = fulImg.FileName;
                fulImg.PostedFile.SaveAs(Server.MapPath(".") + "/Uploads/" + str);
                string path = "~/Admin/Uploads/" + str.ToString();

                var sp = k.TimSPTheoTen(txtName.Text);
                if (!(sp == default(Product)))
                    pnlTB.Visible = true;
                else
                {
                    k.themSP(new Product()
                    {
                        ProductName = txtName.Text,
                        Price = int.Parse(txtGia.Text),
                        CategoryID = int.Parse(ddlCategory.SelectedValue),
                        SupplierID = int.Parse(ddlSupplier.SelectedValue),
                        Picture = path,
                        Description = txtDescription.Text,
                        ProductStatus = true
                    });

                    pnlUpdate.Visible = true;
                }
            }
        }
        #endregion

        this.LoadSP();
    }
}

protected void lbtnBack_Click(object sender, EventArgs e)
{
    Response.Redirect("~/ProductMng");
}
}