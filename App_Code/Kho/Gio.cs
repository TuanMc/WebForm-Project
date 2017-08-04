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

    public void DaMua(List<Cart> cart)
    {
        if (cart != null)
        {
            foreach (Cart c in cart)
            {
                Cart oldCart = TimMH(c.CartID);
                oldCart.IsInCart = false;
            }

            dc.SubmitChanges();
        }
    }

    public List<Cart> DanhSachMH()
    {
        return dc.Carts.Where(x => x.IsInCart == true).ToList();
    }

    public void Dispose()
    {
        if (this.dc != null) this.dc.Dispose();
    }

    public void SuaSL(int uid, int pid, int quantity)
    {
        var list = TimMH(uid);
        if (list != null)
        {
            var c = TimSPTrongGio(pid);
            if (c != null)
                if (quantity != c.Quantity && quantity > 0)
                    c.Quantity = (short)quantity;
        }
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

    public Cart TimMH(int uid)
    {
        return dc.Carts.FirstOrDefault(x => x.UserID == uid);
    }

    public void XoaMH(int id)
    {
        try
        {
            var MH = TimSPTrongGio(id);
            if (MH != null)
            {
                dc.Carts.DeleteAllOnSubmit(dc.Carts);
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