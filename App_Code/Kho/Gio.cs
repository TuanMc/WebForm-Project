using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Gio : List<Product>, IGio
{
    private DataClassesDataContext dc = null;

    public Gio()
    {
        this.dc = new DataClassesDataContext();
    }

    public List<Cart> DanhSachMH
    {
        get
        {
            return dc.Carts.Where(x => x.IsInCart == true).ToList();
        }
    }

    public void Dispose()
    {
        if (this.dc != null) this.dc.Dispose();
    }

    public void SuaSL(int pid, int quantity)
    {
        var c = TimSPTrongGio(pid);
        if (c != null)
            if (quantity != c.Quantity && quantity > 0)
                c.Quantity = (short)quantity;
        dc.SubmitChanges();
    }

    public void themMH(Cart c)
    {
        try
        {
            dc.Carts.InsertOnSubmit(c);
            dc.SubmitChanges();
        }
        catch (Exception)
        {
            return;
        }
    }

    public void XoaMH(int id)
    {
        try
        {
            var MH = TimSPTrongGio(id);
            if (MH != null)
            {
                dc.Carts.DeleteOnSubmit(MH);
                dc.SubmitChanges();
            }
            else
                return;
        }
        catch (Exception)
        {
            return;
        }
    }

    public void XoaGio()
    {
        try
        {
            dc.Carts.DeleteAllOnSubmit(dc.Carts);
            dc.SubmitChanges();
        }
        catch (Exception)
        {
            return;
        }
    }

    public Cart TimSPTrongGio(int id)
    {
        return dc.Carts.FirstOrDefault(x => x.ProductID == id);
    }
}