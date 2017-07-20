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
        int.TryParse(Request.QueryString["id"], out id);

        if (!IsPostBack)
        {

            if (id == 0)
                this.LoadSP();
            else
                this.LoadSPTheoMa(id);
        }
    }

    private void LoadSPTheoMa(int id)
    {
        using (var k = new Kho())
        {
            #region Binding TextBox
            var sp = k.TimSP(id);
            txtName.Text = sp.ProductName;
            txtGia.Text = sp.Price.ToString();
            txtDescription.Text = sp.Description;

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

    private void LoadSP()
    {
        #region Empty String
        txtName.Text = string.Empty;
        txtDescription.Text = string.Empty;
        txtGia.Text = string.Empty;

        #endregion

        using (var k = new Kho())
        {
            #region Binding Category
            var categoryList = k.DanhSachDM;
            categoryList.Insert(0, new Category()
            {
                CategoryID = -1,
                CategoryName = "----------Select----------"
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
                SupplierID = -1,
                SupplierName = "----------Select----------"
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
            int.TryParse(Request.QueryString["id"], out id);
            if (id != 0)
            {
                k.SuaSP(new Product()
                {
                    ProductID = id,
                    ProductName = txtName.Text,
                    Price = int.Parse(txtGia.Text),
                    CategoryID = int.Parse(ddlCategory.SelectedValue),
                    SupplierID = int.Parse(ddlSupplier.SelectedValue),
                    Description = txtDescription.Text
                });

                lblTB.Text = "Item was successfully updated";
                this.LoadSP();
            }

            #endregion
            
            #region Them Product
            else
            {
                var sp = k.TimSPTheoTen(txtName.Text);
                if (!(sp == default(Product)))
                    lblTB.Text = "Item already exists";
                else
                {
                    k.themSP(new Product()
                    {
                        ProductName = txtName.Text,
                        Price = int.Parse(txtGia.Text),
                        CategoryID = int.Parse(ddlCategory.SelectedValue),
                        SupplierID = int.Parse(ddlSupplier.SelectedValue),
                        Description = txtDescription.Text,
                        ProductStatus = true
                    });
                    lblTB.Text = "Item was successfully added";
                    this.LoadSP();

                }
            }
            #endregion

        }
    }

    protected void lbtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ProductMng.aspx");
    }
}