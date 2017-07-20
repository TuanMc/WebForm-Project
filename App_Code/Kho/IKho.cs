using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IKho
/// </summary>
public interface IKho:IDisposable
{
    #region Products
    List<Product> DanhSachSP { get; }

    List<Product> DanhSachSPHienThi { get; }

    void themSP(Product p);

    Product TimSP(int id);

    Product TimSPTheoTen(string name);

    void SuaSP(Product product);

    void XoaSP(int id);
    #endregion

    #region Category
    List<Category> DanhSachDM { get; }
    void themDM(Category c);

    Category TimDM(int id);

    Category TimDMTheoTen(string name);

    void SuaDM(Category category);

    void XoaDM(int id);
    #endregion

    #region Supplier
    List<Supplier> DanhSachNCC { get; }
    void themNCC(Supplier s);

    Supplier TimNCC(int id);

    void SuaNCC(Supplier supplier);

    void XoaNCC(int id);

    Supplier TimNCCTheoTen(string name);
    #endregion

    #region User

    // Add user

    // Check User

    // Modify User

    #endregion

    /*
    #region User
    List<User> DanhSachUser { get; }
    string themUser(Product p);

    Product TimUser(int id);

    string SuaUser(Product product);

    string XoaUser(int id);
    #endregion
    */
}