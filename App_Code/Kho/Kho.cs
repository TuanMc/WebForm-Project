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

    public void Dispose()
    {
        if (this.dc != null) this.dc.Dispose();
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

    public void themSP(Product p)
    {
        try
        {
            dc.Products.InsertOnSubmit(p);
            dc.SubmitChanges();
        }
        catch (Exception)
        {
            return;
        }

       
    }

    public Category TimDM(int id)

    {
        return dc.Categories.FirstOrDefault(x => x.CategoryID == id);
    }

    public Category TimDMTheoTen(string name)
    {
        return dc.Categories.Where(x => x.CategoryName.Contains(name)).SingleOrDefault();
    }

    public Supplier TimNCC(int id)
    {
        return dc.Suppliers.FirstOrDefault(x => x.SupplierID == id);
    }

    public Supplier TimNCCTheoTen(string name)
    {
        return dc.Suppliers.Where(x => x.SupplierName.Contains(name)).SingleOrDefault();
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

    public void XoaSP(int id)
    {
        try
        {
            var sp = TimSP(id);
            if (sp == default(Product))
            {
                return ;
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