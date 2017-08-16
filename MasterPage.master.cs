using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (var k = new Gio())
        {
            // Kiem tra so luong trong gio:
            // Push notification khi so luong != 0;
            var sl = k.DanhSachMH.Count();
            if (sl != 0)
            {
                lblSL.Text = sl.ToString();
                lblSL.Visible = true;
            }
            if (Session["dn"] == null)
                lblTenDN.Text = "Visitor";
            else
            {
                lblTenDN.Text = Session["dn"].ToString();
            }
        }
    }
    
}
