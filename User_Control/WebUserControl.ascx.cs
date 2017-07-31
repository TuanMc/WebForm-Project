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
        
    }

    protected void btnSeach_ServerClick(object sender, EventArgs e)
    {
        var tk = txtSearch.Text;
        if (!string.IsNullOrEmpty(tk))
            tk = HttpUtility.UrlEncode(tk); // make sure the search phrase is properly encoded
        Response.Redirect("Search.aspx?q=" + tk);
    }
}