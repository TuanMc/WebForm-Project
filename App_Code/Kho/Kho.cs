using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Su dung cho trang Admin
public class Kho : IKho
{
    DataClassesDataContext dc = null;

    public Kho()
    {
        dc = new DataClassesDataContext();
    }

    public List<Product> DanhSachSP
    {
        get
        {
            return dc.Products.ToList();
        }
    }

    public List<Product> DanhSachSPHienThi
    {
        get
        {
            return dc.Products.Where(x => x.ProductStatus == true).ToList();
        }
    }

    public List<Category> DanhSachDM
    {
        get
        {
            return dc.Categories.ToList();
        }
    }

    public List<Supplier> DanhSachNCC
    {
        get
        {
            return dc.Suppliers.ToList();
        }
    }

    public List<User> DanhSachND
    {
        get
        {
            return dc.Users.ToList();
        }
    }

    public List<User> DanhSachNDTheoMa(int uid)
    {
        return dc.Users.Where(x => x.UserID == uid).ToList();
    }

    public List<Role> DanhSachRole
    {
        get
        {
            return dc.Roles.ToList();
        }
    }

    public List<User> DanhSachNDHienThi
    {
        get
        {
            return dc.Users.Where(x => x.Status == true).ToList();
        }
    }

    public List<Order> DanhSachHD
    {
        get
        {
            return dc.Orders.ToList();
        }
    }

    public List<OrderDetail> DanhSachCTHD
    {
        get
        {
            return dc.OrderDetails.ToList();
        }
    }

    public void Dispose()
    {
        if (this.dc != null) this.dc.Dispose();
    }

    public void GiaoHD(int id)
    {
        try
        {
            var hd = TimHD(id);
            if (hd == default(Order)) return;
            else
            {
                var cthd = TimCTHD(id);

                foreach (var item in cthd)
                {
                    item.ShippedDate = DateTime.Now;
                }

                hd.OrderStatus = false;
                dc.SubmitChanges();
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void SuaDM(Category category)
    {
        try
        {
            Category c = TimDM(category.CategoryID);

            if (c == default(Category))
            {
                return;
            }
            else
            {
                c.CategoryName = category.CategoryName;
                c.CategoryID = category.CategoryID;

                dc.SubmitChanges();
                return;
            }
        }
        catch (Exception)
        {
            return;
        }


    }

    public void SuaNCC(Supplier supplier)
    {
        try
        {
            Supplier c = TimNCC(supplier.SupplierID);

            if (c == default(Supplier))
            {
                return;
            }
            else
            {
                c.SupplierName = supplier.SupplierName;
                c.SupplierID = supplier.SupplierID;

                dc.SubmitChanges();
                return;
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void SuaSP(Product product)
    {
        try
        {
            Product c = TimSP(product.ProductID);
            {
                c.ProductName = product.ProductName;
                c.CategoryID = product.CategoryID;
                c.SupplierID = product.SupplierID;
                c.Price = product.Price;
                c.Picture = product.Picture;
                c.Description = product.Description;

                dc.SubmitChanges();
                return;
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void SuaTTND(User user)
    {
        try
        {
            User u = TimND(user.UserID);
            if (u != default(User))
            {
                u.Username = user.Username;
                u.Password = user.Password;
                u.RoleID = user.RoleID;
                u.FName = user.FName;
                u.LName = user.LName;
                u.Email = user.Email;
                u.Phone = user.Phone;

                dc.SubmitChanges();
                return;
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void themDM(Category c)
    {
        try
        {
            dc.Categories.InsertOnSubmit(c);
            dc.SubmitChanges();
            return;
        }
        catch (Exception)
        {
            return;
        }

    }

    public void themHD(Order p)
    {
        try
        {
            dc.Orders.InsertOnSubmit(p);
            dc.SubmitChanges();

            return;
        }
        catch (Exception)
        {
            return;
        }
    }

    public void ThemCTHD(List<Cart> c, Order o)
    {
        List<OrderDetail> od = new List<OrderDetail>();

        // Add items from Cart to List<OrderDetail>
        foreach (var item in c)
        {
            od.Add(new OrderDetail()
            {
                OrderID = o.OrderID,
                UserID = (int)o.UserID,
                ProductID = (int)item.ProductID,
                Quantity = item.Quantity,
                UnitPrice = TimSP((int)item.ProductID).Price * item.Quantity,
                OrderDate = o.OrderDate,
            });
        }

        // Add changes to DB
        foreach (var item in od)
        {
            dc.OrderDetails.InsertOnSubmit(item);
        }

        dc.SubmitChanges();
        return;

    }

    public void themNCC(Supplier s)
    {
        try
        {
            dc.Suppliers.InsertOnSubmit(s);
            dc.SubmitChanges();

            return;
        }
        catch (Exception)
        {
            return;
        }
    }

    public bool ThemND(User u)
    {
        try
        {
            dc.Users.InsertOnSubmit(u);
            dc.SubmitChanges();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public void themSP(Product p)
    {
        dc.Products.InsertOnSubmit(p);
        dc.SubmitChanges();
    }

    public List<OrderDetail> TimCTHD(int id)
    {
        return dc.OrderDetails.Where(x => x.OrderID == id).ToList();
    }

    public Category TimDM(int id)
    {
        return dc.Categories.FirstOrDefault(x => x.CategoryID == id);
    }

    public Category TimDMTheoTen(string name)
    {
        return dc.Categories.Where(x => x.CategoryName.Contains(name)).SingleOrDefault();
    }

    public Order TimHD(int id)
    {
        return dc.Orders.FirstOrDefault(x => x.OrderID == id);
    }

    public Order TimHDTheoTen(string name)
    {
        throw new NotImplementedException();
    }

    public Supplier TimNCC(int id)
    {
        return dc.Suppliers.FirstOrDefault(x => x.SupplierID == id);
    }

    public Supplier TimNCCTheoTen(string name)
    {
        return dc.Suppliers.Where(x => x.SupplierName.Contains(name)).SingleOrDefault();
    }

    public User TimND(int id)
    {
        return dc.Users.FirstOrDefault(x => x.UserID == id);
    }

    public User TimNDTheoTenDN(string username)
    {
        return dc.Users.FirstOrDefault(x => x.Username == username);
    }

    public Role TimRole(int id)
    {
        return dc.Roles.FirstOrDefault(x => x.RoleID == id);
    }

    public Product TimSP(int id)
    {
        return dc.Products.FirstOrDefault(x => x.ProductID == id);
    }

    public Product TimSPTheoTen(string name)
    {
        return dc.Products.Where(x => x.ProductName.Equals(name)).SingleOrDefault();
    }

    public void XoaDM(int id)
    {
        try
        {
            var sp = TimDM(id);
            if (sp == default(Category))
                return;
            else
            {
                dc.Categories.DeleteOnSubmit(sp);
                dc.SubmitChanges();
            }
        }
        catch (Exception)
        {
            return;
        }

    }

    public void XoaNCC(int id)
    {
        try
        {
            var sp = TimNCC(id);
            if (sp == default(Supplier))
            {
                return;
            }
            else
            {
                dc.Suppliers.DeleteOnSubmit(sp);
                dc.SubmitChanges();
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void XoaND(int id)
    {
        try
        {
            var nd = TimND(id);
            if (nd == default(User))
            {
                return;
            }
            else
            {
                nd.Status = false;
                dc.SubmitChanges();
            }
        }
        catch (Exception)
        {
            return;
        }
    }

    public void XoaSP(int id)
    {
        try
        {
            var sp = TimSP(id);
            if (sp == default(Product))
            {
                return;
            }
            else
            {
                sp.ProductStatus = false;
                dc.SubmitChanges();
            }
        }
        catch (Exception)
        {
            return;
        }
    }


}