using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserMng : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            if (Session["user"] != null)
                this.LoadUser();
            else
                Response.Redirect("AdLogin.aspx");
    }

    private void LoadUser()
    {
        using (var k = new Kho())
        {
            grvND.DataSource = k.DanhSachNDHienThi.OrderBy(x=>x.RoleID).ToList();
            grvND.DataBind();

            foreach (GridViewRow item in grvND.Rows)
            {
                var hdfMa = item.FindControl("hdfMa") as HiddenField;
                var lblRole = item.FindControl("lblRole") as Label;
                var maDM = int.Parse(hdfMa.Value);
                var role = k.TimRole(maDM);

                lblRole.Text = role.RoleName;
            }
        }
    }

    protected void lbtnBlock_Click(object sender, EventArgs e)
    {
        using (var k = new Kho())
        {
            var ma = int.Parse((sender as LinkButton).CommandArgument);
            k.XoaND(ma);
            this.LoadUser();
        }
        pnlXoa.Visible = true;
    }

    protected void lbtnEdit_Click(object sender, EventArgs e)
    {
        var uid = int.Parse((sender as LinkButton).CommandArgument);

        Response.Redirect("~/Admin/ChangeUser.aspx?uid=" + uid);
    }

    protected void grvND_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvND.PageIndex = e.NewPageIndex;
        LoadUser(); 
    }
}