using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Control_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            txtSearch.Text = string.Empty;
    }

    protected void btnSeach_ServerClick(object sender, EventArgs e)
    {
        var tk = txtSearch.Text.Trim();
        if (tk == "")
            Response.Redirect("Search.aspx?q=**");
        else
            Response.Redirect("Search.aspx?q=" + tk);
    }
}