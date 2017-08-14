using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Account : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        // Kiem tra bien Session["dn"] va hien thong bao khi co loi:
        // Load trang neu thoa dieu kien:
        if (Session["dn"] == null)
            pnlDN.Visible = true;
        else
        {
            if (!IsPostBack)
                this.LoadTTND();
        }
    }

    private void LoadTTND()
    {

        // Tim nguoi dung theo bien Session["dn"]:
        // Gan thong tin nguoi dung vao cac field:
        using (var k = new Kho())
        {
            var tenDN = Session["dn"].ToString();
            var nd = k.TimNDTheoTenDN(tenDN);

            txtFN.Text = nd.FName;
            txtLN.Text = nd.LName;
            txtUN.Text = nd.Username;
            txtEmail.Text = nd.Email;
            txtPhone.Text = nd.Phone;
            txtAddr.Text = nd.Address;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Tiep tuc kiem tra bien Session["dn"] khi nhap nut Submit:
        if (Session["dn"] == null)
        {
            pnlDN.Visible = true;
        }
        else
        {
            // Khi da tim duoc nguoi dung theo bien Session["dn"] --> Cap nhat thong tin theo tung field:
            using (var k = new Kho())
            {
                var currentUser = k.TimNDTheoTenDN(Session["dn"].ToString());
                var user = new User()
                {
                    UserID = currentUser.UserID,
                    FName = txtFN.Text,
                    LName = txtLN.Text,
                    Username = txtUN.Text,
                    Password = txtRePass.Text,
                    Email = txtEmail.Text,
                    Phone = txtPhone.Text,
                    Address = txtAddr.Text,
                    RoleID = 2,
                };
                k.SuaTTND(user);

                // Xuat thong bao khi thanh cong -> load lai trang:
                pnlUpdate.Visible = true;
                this.LoadTTND();
            }
        }
    }
}