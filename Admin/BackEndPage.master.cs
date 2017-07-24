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
        if (Session["user"] != null)
            lblTen.Text = Session["user"].ToString();
    }

    protected void ImgLabel_Click(object sender, ImageClickEventArgs e)
    {

    }
}
