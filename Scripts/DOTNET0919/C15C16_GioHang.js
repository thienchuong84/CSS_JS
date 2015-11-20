// Class SanPham for GioHang
function SanPham(ma, ten, gia) {
    this.Ma = ma;
    this.Ten = ten;
    this.Gia = gia;
    this.SoLuongMua = 10;
}

// Xây dựng Class GioHang
function GioHang() {
    var dssp = new Array();     // khai báo 1 Array chưa sp

    this.SoMatHang = function () {  // tương tự PROPERTY bên .NET
        return dssp.length;         // nhưng trong JS ta phải viết = method
    }

    this.TongTien = function () {
        var s = 0;
        for (var i = 0; i < dssp.length; i++) {
            s = s + dssp[i].Gia * dssp[i].SoLuongMua;
        }
        return s;
    }

    this.TongSoLuongSP = function () {
        var s = 0;
        for (var i = 0; i < dssp.length; i++) {
            s = s + dssp[i].SoLuongMua;
        }
        return s;
    }

    this.Mua = function (sp, sl) {
        var kq = -1;
        for (var i = 0; i < dssp.length; i++) { // loop và tìm kiếm trong giỏ hàng
            if (sp.Ma == dssp[i].Ma) {
                kq = i;
                break;
            }
        }
        if (kq == -1) { // KO tìm thấy sp trong giỏ hàng
            sp.SoLuongMua = sl;
            dssp[dssp.length] = sp;
        }
        else {  // tìm thấy sp đã có trong gh, vì vậy cập nhật slm
            dssp[kq].SoLuongMua += sl;
        }
    }

    this.Tim = function (i) {
        return dssp[i]; // trả về sp thứ i trong array
    }

    this.XoaSPTheoMaTrongGH = function (maSP) {
        var kq = -1;
        for (var i = 0; i < dssp.length; i++) {
            if (dssp[i].Ma == maSP) {
                kq = i;
                break;
            }
        }
        if (kq == -1) return;
        else {
            for (var i = kq; i < dssp.length - 1; i++) {
                dssp[i] = dssp[i + 1];
            }
            dssp.length--;  // dồn 1 sp phía sau lên phía trước, hay giảm độ dài mãng
        }
    }
}