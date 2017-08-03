using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public interface IGio: IDisposable
{
    List<Cart> DanhSachMHTrongGio(int uid);

    void themMH(Cart p);

    Cart TimMH(int id);

    void SuaSL(int id, int quantity);

    void XoaMH(int id);

    void DaMua(List<Cart> cart);

    Product TimSP(int id);
}