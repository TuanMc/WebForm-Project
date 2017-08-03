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
            this.LoadMH(1);
        }
    }

    private void LoadMH(int uid)
    {
        using (var g = new Gio())
        {
            var mh = g.DanhSachMHTrongGio(uid);
            var tong = 0;
            var index = 0;

            // Nhap thong tin cho repeater 
            rptMH.DataSource = mh;
            rptMH.DataBind();


            // Them thong tin cho cac item
            foreach (RepeaterItem item in rptMH.Items)
            {
                var sp = g.TimSP((int)mh[index].ProductID);

                var img = item.FindControl("imgMH") as Image;
                img.ImageUrl = sp.Picture;
                var lblTen = item.FindControl("lblName") as Label;
                lblTen.Text = sp.ProductName;
                var lblPrice = item.FindControl("lblPrice") as Label;
                lblPrice.Text = sp.Price.ToString();
                var lblSubPrice = item.FindControl("lblSubPrice") as Label;
                tong += (int)(sp.Price * mh[index].Quantity);
                lblSubPrice.Text = (sp.Price * mh[index].Quantity).ToString();

                index++;
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
}