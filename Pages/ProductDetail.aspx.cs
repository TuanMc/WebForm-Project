using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        Label lb = FormView1.FindControl("SupplierIDLabel") as Label;
        
    }



    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}