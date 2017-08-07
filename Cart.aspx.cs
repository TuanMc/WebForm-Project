using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Interface_Pages_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.LoadMH();
        }
    }


    private void LoadMH()
    {
        using (var g = new Gio())
        {
            var mh = g.DanhSachMH;
            var tong = 0;
            var index = 0;

            // Nhap thong tin cho repeater 
            rptMH.DataSource = mh;
            rptMH.DataBind();


            // Them thong tin cho cac item
            foreach (RepeaterItem item in rptMH.Items)
            {
                using (var k = new Kho())
                {
                    var sp = k.TimSP((int)mh[index].ProductID);

                    var img = item.FindControl("imgMH") as Image;
                    var txtSL = item.FindControl("txtSL") as TextBox;
                    var lblTen = item.FindControl("lblName") as Label;
                    var lblPrice = item.FindControl("lblPrice") as Label;
                    var lblSubPrice = item.FindControl("lblSubPrice") as Label;
                    var lblTT = item.FindControl("lblTT") as Label;

                    // Chinh Status
                    var t = mh[index].IsInCart.ToString();
                    if (t == "True")
                        lblTT.Text = "In stock";
                    else
                    {
                        lblTT.Text = "Out of stock";
                    }

                    // Gan gia tri cho tung item
                    img.ImageUrl = sp.Picture;
                    lblTen.Text = sp.ProductName;
                    tong += (int)(sp.Price * mh[index].Quantity);
                    lblPrice.Text = sp.Price.ToString();
                    lblSubPrice.Text = (sp.Price * mh[index].Quantity).ToString();
                    txtSL.Text = mh[index].Quantity.ToString();

                    index++;
                }
            }

            // Thong tin check out
            lblSubTotal.Text = tong.ToString();
            lblTax.Text = (tong * 0.05).ToString();
            lblTotalPrice.Text = (tong * 1.05).ToString();
        }
    }

    protected void btnShop_click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");

    }

    protected void btnRemove_ServerClick(object sender, EventArgs e)
    {
        var ma = int.Parse((sender as Button).CommandArgument);
        using (var g = new Gio())
        {
            g.XoaMH(ma);
            this.LoadMH();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        using (var k = new Kho())
        {
            using (var g = new Gio())
            {
                var mh = g.DanhSachMH;
                var index = 0;

                foreach (RepeaterItem item in rptMH.Items)
                {
                    var txtSL = item.FindControl("txtSL") as TextBox;
                    var sl = int.Parse(txtSL.Text);

                    if (sl != mh[index].Quantity)
                    {
                        g.SuaSL(1, (int)mh[index].ProductID, sl);
                    }

                    index++;
                }
            }
            this.LoadMH();
        }
    }

    protected void btnMua_ServerClick(object sender, EventArgs e)
    {
        if (Session["dn"] == null)
            Response.Redirect("~/Requirement.aspx");
        else
        {
            using (var g = new Gio())
            {
                using (var k = new Kho())
                {
                    var nd = k.TimNDTheoTenDN(Session["dn"].ToString());

                    var order = new Order()
                    {
                        UserID = nd.UserID,
                        OrderDate = DateTime.Now,
                        OrderStatus = true,
                    };

                    k.themHD(order);
                    k.ThemCTHD(g.DanhSachMH, order);
                }
                g.XoaGio();
                Response.Redirect("~/Index.aspx");
            }
        }
    }
}