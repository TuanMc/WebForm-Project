using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public interface IGio: IDisposable
{
    List<Cart> DanhSachMHTrongGio(int uid);

    void themMH(Cart c);

    Cart TimMH(int id);

    void SuaSL(int uid, int pid, int quantity);

    void XoaMH(int id);

    void DaMua(List<Cart> cart);

    Cart TimSPTrongGio(int id);
}