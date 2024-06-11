package com.PRO3021.yennth.ass.controller;

import com.PRO3021.yennth.ass.entity.ChiTietSanPham;
import com.PRO3021.yennth.ass.entity.ChucVu;
import com.PRO3021.yennth.ass.entity.CuaHang;
import com.PRO3021.yennth.ass.entity.DongSanPham;
import com.PRO3021.yennth.ass.entity.GioHang;
import com.PRO3021.yennth.ass.entity.GioHangChiTiet;
import com.PRO3021.yennth.ass.entity.HoaDon;
import com.PRO3021.yennth.ass.entity.HoaDonChiTiet;
import com.PRO3021.yennth.ass.entity.KhachHang;
import com.PRO3021.yennth.ass.entity.MauSac;
import com.PRO3021.yennth.ass.entity.NhanVien;
import com.PRO3021.yennth.ass.entity.SanPham;
import com.PRO3021.yennth.ass.service.IChiTietSanPham;
import com.PRO3021.yennth.ass.service.IChucVu;
import com.PRO3021.yennth.ass.service.ICuaHang;
import com.PRO3021.yennth.ass.service.IDongSanPham;
import com.PRO3021.yennth.ass.service.IGioHang;
import com.PRO3021.yennth.ass.service.IGioHangChiTiet;
import com.PRO3021.yennth.ass.service.IHoaDon;
import com.PRO3021.yennth.ass.service.IHoaDonChiTiet;
import com.PRO3021.yennth.ass.service.IKhachHang;
import com.PRO3021.yennth.ass.service.IMauSac;
import com.PRO3021.yennth.ass.service.INhanVien;
import com.PRO3021.yennth.ass.service.ISanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BanHangController {

    @Autowired
    private INhanVien serviceNhanVien;

    @Autowired
    private IChiTietSanPham serviceChiTietSanPham;

    @Autowired
    private IChucVu serviceChucVu;

    @Autowired
    private ICuaHang serviceCuaHang;

    @Autowired
    private IDongSanPham serviceDongSanPham;

    @Autowired
    private IGioHang serviceGioHang;

    @Autowired
    private IGioHangChiTiet serviceGioHangChiTiet;

    @Autowired
    private IHoaDon serviceHoaDon;

    @Autowired
    private IHoaDonChiTiet serviceHoaDonChiTiet;

    @Autowired
    private IKhachHang serviceKhachHang;

    @Autowired
    private IMauSac serviceMauSac;

    @Autowired
    private ISanPham serviceSanPham;

    @GetMapping("hien-thi-tat-ca")
    private String hienThi(Model model) {
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listChucVu", serviceChucVu.findAll());
        model.addAttribute("listCuaHang", serviceCuaHang.findAll());
        model.addAttribute("listDongSanPham", serviceDongSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        model.addAttribute("listGioHangChiTiet", serviceGioHangChiTiet.findAll());
        model.addAttribute("listHoaDon", serviceHoaDon.findAll());
        model.addAttribute("listHoaDonChiTiet", serviceHoaDonChiTiet.findAll());
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listMauSac", serviceMauSac.findAll());
        model.addAttribute("listSanPham", serviceSanPham.findAll());
        return "/ass/views";
    }

    // remove
    @GetMapping("sanPham/remove/{id}")
    private String removeSanPham(@PathVariable Integer id) {
        serviceSanPham.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("chiTietSanPham/remove/{id}")
    private String removeChiTietSanPham(@PathVariable Integer id) {
        serviceChiTietSanPham.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("chucVu/remove/{id}")
    private String removeChucVu(@PathVariable Integer id) {
        serviceChucVu.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("cuaHang/remove/{id}")
    private String removeCuaHang(@PathVariable Integer id) {
        serviceCuaHang.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("dongSanPham/remove/{id}")
    private String removeDongSanPham(@PathVariable Integer id) {
        serviceDongSanPham.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("gioHang/remove/{id}")
    private String removeGioHang(@PathVariable Integer id) {
        serviceGioHang.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("gioHangChiTiet/remove/{id}")
    private String removeGioHangChiTiet(@PathVariable Integer id) {
        serviceGioHangChiTiet.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("hoaDon/remove/{id}")
    private String removeHoaDon(@PathVariable Integer id) {
        serviceHoaDon.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("hoaDonChiTiet/remove/{id}")
    private String removeHoaDonChiTiet(@PathVariable Integer id) {
        serviceHoaDonChiTiet.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("khachHang/remove/{id}")
    private String removeKhachHang(@PathVariable Integer id) {
        serviceKhachHang.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("mauSac/remove/{id}")
    private String removeMauSac(@PathVariable Integer id) {
        serviceMauSac.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    @GetMapping("nhanVien/remove/{id}")
    private String removeNhanVien(@PathVariable Integer id) {
        serviceNhanVien.deleteById(id);
        return "redirect:/hien-thi-tat-ca";
    }

    // DETAIL
    @GetMapping("chiTietSanPham/detail/{id}")
    private String detailChiTietSanPham(@PathVariable Integer id, Model model) {
        model.addAttribute("chiTietSanPham", serviceChiTietSanPham.findById(id).orElse(null));
        model.addAttribute("listMauSac", serviceMauSac.findAll());
        model.addAttribute("listSanPham", serviceSanPham.findAll());
        model.addAttribute("listDongSanPham", serviceDongSanPham.findAll());
        return "/ass/update/chiTietSanPhamUpdate";
    }

    @GetMapping("chucVu/detail/{id}")
    private String detailChucVu(@PathVariable Integer id, Model model) {
        model.addAttribute("chucVu", serviceChucVu.findById(id).orElse(null));
        return "/ass/update/chucVuUpdate";
    }

    @GetMapping("cuaHang/detail/{id}")
    private String detailCuaHang(@PathVariable Integer id, Model model) {
        model.addAttribute("cuaHang", serviceCuaHang.findById(id).orElse(null));
        return "/ass/update/cuaHangUpdate";
    }

    @GetMapping("dongSanPham/detail/{id}")
    private String detailDongSanPham(@PathVariable Integer id, Model model) {
        model.addAttribute("dongSanPham", serviceDongSanPham.findById(id).orElse(null));
        return "/ass/update/dongSanPhamUpdate";
    }

    @GetMapping("gioHang/detail/{id}")
    private String detailGioHang(@PathVariable Integer id, Model model) {
        model.addAttribute("gioHang", serviceGioHang.findById(id).orElse(null));
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/update/gioHangUpdate";
    }

    @GetMapping("gioHangChiTiet/detail/{id}")
    private String detailGioHangChiTiet(@PathVariable Integer id, Model model) {
        model.addAttribute("gioHangChiTiet", serviceGioHangChiTiet.findById(id).orElse(null));
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/update/gioHangChiTietUpdate";
    }

    @GetMapping("hoaDon/detail/{id}")
    private String detailHoaDon(@PathVariable Integer id, Model model) {
        model.addAttribute("hoaDon", serviceHoaDon.findById(id).orElse(null));
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/update/hoaDonUpdate";
    }

    @GetMapping("hoaDonChiTiet/detail/{id}")
    private String detailHoaDonChiTiet(@PathVariable Integer id, Model model) {
        model.addAttribute("hoaDonChiTiet", serviceHoaDonChiTiet.findById(id).orElse(null));
        model.addAttribute("listHoaDon", serviceHoaDon.findAll());
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/update/hoaDonChiTietUpdate";
    }

    @GetMapping("khachHang/detail/{id}")
    private String detailKhachHang(@PathVariable Integer id, Model model) {
        model.addAttribute("khachHang", serviceKhachHang.findById(id).orElse(null));
        return "/ass/update/khachHangUpdate";
    }

    @GetMapping("mauSac/detail/{id}")
    private String detailMauSac(@PathVariable Integer id, Model model) {
        model.addAttribute("mauSac", serviceMauSac.findById(id).orElse(null));
        return "/ass/update/mauSacUpdate";
    }

    @GetMapping("sanPham/detail/{id}")
    private String detailSanPham(@PathVariable Integer id, Model model) {
        model.addAttribute("sanPham", serviceSanPham.findById(id).orElse(null));
        return "/ass/update/sanPhamUpdate";
    }

    @GetMapping("nhanVien/detail/{id}")
    private String detailNhanVien(@PathVariable Integer id, Model model) {
        model.addAttribute("nhanVien", serviceNhanVien.findById(id).orElse(null));
        model.addAttribute("listChucVu", serviceChucVu.findAll());
        model.addAttribute("listCuaHang", serviceCuaHang.findAll());
        System.out.println("jjjjjjjjjjj" + serviceChucVu.findAll().size());
        return "/ass/update/nhanVienUpdate";
    }

    //   VIEW ADD
    @GetMapping("nhanVien/view-add")
    private String nhanVienViewAdd(Model model) {
        model.addAttribute("listChucVu", serviceChucVu.findAll());
        model.addAttribute("listCuaHang", serviceCuaHang.findAll());
        return "/ass/add/nhanVienAdd";
    }

    @GetMapping("chiTietSanPham/view-add")
    private String chiTietSanPhamViewAdd(Model model) {
        model.addAttribute("listMauSac", serviceMauSac.findAll());
        model.addAttribute("listSanPham", serviceSanPham.findAll());
        model.addAttribute("listDongSanPham", serviceDongSanPham.findAll());
        return "/ass/add/chiTietSanPhamAdd";
    }

    @GetMapping("chucVu/view-add")
    private String chucVuViewAdd() {
        return "/ass/add/chucVuAdd";
    }

    @GetMapping("cuaHang/view-add")
    private String cuaHangViewAdd() {
        return "/ass/add/cuaHangAdd";
    }

    @GetMapping("dongSanPham/view-add")
    private String dongSanPhamViewAdd() {
        return "/ass/add/dongSanPhamAdd";
    }

    @GetMapping("gioHang/view-add")
    private String gioHangViewAdd(Model model) {
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/add/gioHangAdd";
    }

    @GetMapping("gioHangChiTiet/view-add")
    private String gioHangChiTietViewAdd(Model model) {
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/add/gioHangChiTietAdd";
    }

    @GetMapping("hoaDon/view-add")
    private String hoaDonViewAdd(Model model) {
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/add/hoaDonAdd";
    }

    @GetMapping("hoaDonChiTiet/view-add")
    private String hoaDonChiTietViewAdd(Model model) {
        model.addAttribute("listHoaDon", serviceHoaDon.findAll());
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/add/hoaDonChiTietAdd";
    }

    @GetMapping("khachHang/view-add")
    private String khachHangViewAdd() {
        return "/ass/add/khachHangAdd";
    }

    @GetMapping("mauSac/view-add")
    private String mauSacViewAdd() {
        return "/ass/add/mauSacAdd";
    }

    @GetMapping("sanPham/view-add")
    private String sanPhamViewAdd() {
        return "/ass/add/sanPhamAdd";
    }

    // VIEW UPDATE
    @GetMapping("nhanVien/view-update/{id}")
    private String nhanVienViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("nhanVien", serviceNhanVien.findById(id).orElse(null));
        model.addAttribute("listChucVu", serviceChucVu.findAll());
        model.addAttribute("listCuaHang", serviceCuaHang.findAll());
        return "/ass/update/nhanVienUpdate";
    }

    @GetMapping("chiTietSanPham/view-update/{id}")
    private String chiTietSanPhamViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("chiTietSanPham", serviceChiTietSanPham.findById(id).orElse(null));
        model.addAttribute("listMauSac", serviceMauSac.findAll());
        model.addAttribute("listSanPham", serviceSanPham.findAll());
        model.addAttribute("listDongSanPham", serviceDongSanPham.findAll());
        return "/ass/update/chiTietSanPhamUpdate";
    }

    @GetMapping("chucVu/view-update/{id}")
    private String chucVuViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("chucVu", serviceChucVu.findById(id).orElse(null));
        return "/ass/update/chucVuUpdate";
    }

    @GetMapping("cuaHang/view-update/{id}")
    private String cuaHangViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("cuaHang", serviceCuaHang.findById(id).orElse(null));
        return "/ass/update/cuaHangUpdate";
    }

    @GetMapping("dongSanPham/view-update/{id}")
    private String dongSanPhamViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("dongSanPham", serviceDongSanPham.findById(id).orElse(null));
        return "/ass/update/dongSanPhamUpdate";
    }

    @GetMapping("gioHang/view-update/{id}")
    private String gioHangViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("gioHang", serviceGioHang.findById(id).orElse(null));
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/update/gioHangUpdate";
    }

    @GetMapping("gioHangChiTiet/view-update/{id}")
    private String gioHangChiTietViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("gioHangChiTiet", serviceGioHangChiTiet.findById(id).orElse(null));
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/update/gioHangChiTietUpdate";
    }

    @GetMapping("hoaDon/view-update/{id}")
    private String hoaDonViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("hoaDon", serviceHoaDon.findById(id).orElse(null));
        model.addAttribute("listKhachHang", serviceKhachHang.findAll());
        model.addAttribute("listNhanVien", serviceNhanVien.findAll());
        return "/ass/update/hoaDonUpdate";
    }

    @GetMapping("hoaDonChiTiet/view-update/{id}")
    private String hoaDonChiTietViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("hoaDonChiTiet", serviceHoaDonChiTiet.findById(id).orElse(null));
        model.addAttribute("listHoaDon", serviceHoaDon.findAll());
        model.addAttribute("listChiTietSanPham", serviceChiTietSanPham.findAll());
        model.addAttribute("listGioHang", serviceGioHang.findAll());
        return "/ass/update/hoaDonChiTietUpdate";
    }

    @GetMapping("khachHang/view-update/{id}")
    private String khachHangViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("khachHang", serviceKhachHang.findById(id).orElse(null));
        return "/ass/update/khachHangUpdate";
    }

    @GetMapping("mauSac/view-update/{id}")
    private String mauSacViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("mauSac", serviceMauSac.findById(id).orElse(null));
        return "/ass/update/mauSacUpdate";
    }

    @GetMapping("sanPham/view-update/{id}")
    private String sanPhamViewUpdate(@PathVariable Integer id, Model model) {
        model.addAttribute("sanPham", serviceSanPham.findById(id).orElse(null));
        return "/ass/update/sanPhamUpdate";
    }

    // ADD
    @PostMapping("nhanVien/add")
    private String addNhanVien(NhanVien nhanVien) {
        serviceNhanVien.save(nhanVien);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("chiTietSanPham/add")
    private String addChiTietSanPham(ChiTietSanPham chiTietSanPham) {
        serviceChiTietSanPham.save(chiTietSanPham);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("chucVu/add")
    private String addChucVu(ChucVu chucVu) {
        serviceChucVu.save(chucVu);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("cuaHang/add")
    private String addCuaHang(CuaHang cuaHang) {
        serviceCuaHang.save(cuaHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("dongSanPham/add")
    private String addDongSanPham(DongSanPham dongSanPham) {
        serviceDongSanPham.save(dongSanPham);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("gioHang/add")
    private String addGioHang(GioHang gioHang) {
        serviceGioHang.save(gioHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("gioHangChiTiet/add")
    private String addGioHangChiTiet(GioHangChiTiet gioHangChiTiet) {
        serviceGioHangChiTiet.save(gioHangChiTiet);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("hoaDon/add")
    private String addHoaDon(HoaDon hoaDon) {
        serviceHoaDon.save(hoaDon);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("hoaDonChiTiet/add")
    private String addHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet) {
        serviceHoaDonChiTiet.save(hoaDonChiTiet);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("khachHang/add")
    private String addKhachHang(KhachHang khachHang) {
        serviceKhachHang.save(khachHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("mauSac/add")
    private String addMauSac(MauSac mauSac) {
        serviceMauSac.save(mauSac);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("sanPham/add")
    private String addSanPham(SanPham sanPham) {
        serviceSanPham.save(sanPham);
        return "redirect:/hien-thi-tat-ca";
    }

    //    UPDATE
    @PostMapping("nhanVien/update")
    private String updateNhanVien(NhanVien nhanVien) {
        serviceNhanVien.save(nhanVien);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("chiTietSanPham/update")
    private String updateChiTietSanPham(ChiTietSanPham chiTietSanPham) {
        serviceChiTietSanPham.save(chiTietSanPham);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("chucVu/update")
    private String updateChucVu(ChucVu chucVu) {
        serviceChucVu.save(chucVu);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("cuaHang/update")
    private String updateCuaHang(CuaHang cuaHang) {
        serviceCuaHang.save(cuaHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("dongSanPham/update")
    private String updateDongSanPham(DongSanPham dongSanPham) {
        serviceDongSanPham.save(dongSanPham);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("gioHang/update")
    private String updateGioHang(GioHang gioHang) {
        serviceGioHang.save(gioHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("gioHangChiTiet/update")
    private String updateGioHangChiTiet(GioHangChiTiet gioHangChiTiet) {
        serviceGioHangChiTiet.save(gioHangChiTiet);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("hoaDon/update")
    private String updateHoaDon(HoaDon hoaDon) {
        serviceHoaDon.save(hoaDon);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("hoaDonChiTiet/update")
    private String updateHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet) {
        serviceHoaDonChiTiet.save(hoaDonChiTiet);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("khachHang/update")
    private String updateKhachHang(KhachHang khachHang) {
        serviceKhachHang.save(khachHang);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("mauSac/update")
    private String updateMauSac(MauSac mauSac) {
        serviceMauSac.save(mauSac);
        return "redirect:/hien-thi-tat-ca";
    }

    @PostMapping("sanPham/update")
    private String updateSanPham(SanPham sanPham) {
        serviceSanPham.save(sanPham);
        return "redirect:/hien-thi-tat-ca";
    }
}
