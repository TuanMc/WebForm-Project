using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public interface IGio : IDisposable
{
    List<Cart> DanhSachMH { get; }

    void themMH(Cart c);

    void SuaSL(int pid, int quantity);

    void XoaMH(int id);

    void XoaGio();

    Cart TimSPTrongGio(int id);
}