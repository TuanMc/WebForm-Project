using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public interface IGio: IDisposable
{
    List<Cart> DanhSachMH { get; }

    void themMH(Cart c);

    Cart TimMH(int id);

    void SuaSL(int uid, int pid, int quantity);

    void XoaMH(int id);

    void XoaGio();

    void DaMua(List<Cart> cart);

    Cart TimSPTrongGio(int id);
}