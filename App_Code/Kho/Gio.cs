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

    public List<Cart> DanhSachMHTrongGio(int uid)
    {
        return dc.Carts.Where(x => x.UserID == uid && x.IsInCart == true).ToList();
    }

    public void Dispose()
    {
        if (this.dc != null) this.dc.Dispose();
    }

    public void SuaSL(int id, int quantity)
    {
        var c = TimMH(id);
        c.Quantity = (short)quantity;

        dc.SubmitChanges();
    }

    public void themMH(Cart p)
    {
        try
        {
            dc.Carts.InsertOnSubmit(p);
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
        //    try
        //    {
        //        var MH = TimMH(id);
        //        if (MH == default(Cart))
        //        {
        //            return;
        //        }
        //        else
        //        {
        //            dc.Carts.DeleteOnSubmit(TimMH(id));
        //            dc.SubmitChanges();
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        return;
        //    }
        //}

        throw new NotImplementedException();
    }

    public Product TimSP(int id)
    {
        return dc.Products.FirstOrDefault(x => x.ProductID == id);
    }
}