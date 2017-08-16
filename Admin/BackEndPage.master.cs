using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BackEndPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Gan ten admin:
        if (Session["user"] != null)
        { 
            lblTenDN.Text = Session["user"].ToString();

            using (var k = new Kho())
            {
                var sl = k.DanhSachHD.Where(x => x.OrderStatus == true).Count();

                if (sl != 0)
                {
                    lblSL.Visible = true;
                    lblSL.Text = sl.ToString();
                }
            }
        }
    }
}
