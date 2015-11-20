<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C15C16_XayDungBanHangJavaScript.aspx.cs" Inherits="DOTNET0919_C15C16_XayDungBanHangJavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/DOTNET0919/C15C16_GioHang.js"></script>
    <script type="text/javascript">
        var gh = new GioHang();     // khởi tạo Giỏ Hàng
        var dssp = new Array(2);    // khai báo Array dssp có 2 phần tử là 2 sp
        dssp[0] = new SanPham(1, "Tivi SamSung G500", 100); // khởi tạo sp
        dssp[1] = new SanPham(2, "Dien Thoai Iphone 6", 200);

        function HienThiGH() {
            var bangOfSP = document.getElementById("tblGioHang");
            for (var i = 0; i < gh.SoMatHang(); i++) { //loop trong gio hang de show gh
                // nếu trong gh có sp sẽ tao loop và insert dòng cột vào đây

                // B1: Lấy giá trị của cột
                var valueMa = document.createTextNode(gh.Tim(i).Ma);
                var valueTen = document.createTextNode(gh.Tim(i).Ten);
                var valueGia = document.createTextNode(gh.Tim(i).Gia);
                var valueSLM = document.createTextNode(gh.Tim(i).SoLuongMua)

                // B2: Tạo cột và hàng tương ứng để đưa các gtrị vào
                var cotMa = document.createElement('td');   // tạo element td
                var cotTen = document.createElement('td');
                var cotGia = document.createElement('td');
                var cotSLM = document.createElement('td');
                var hangSP = document.createElement('tr');

                // B3: Đưa giá trị vào các cột
                cotMa.appendChild(valueMa);
                cotTen.appendChild(valueTen);
                cotGia.appendChild(valueGia);
                cotSLM.appendChild(valueSLM);

                // B4: hàng có nhiều cột, đưa các cột vào hàng
                hangSP.appendChild(cotMa);
                hangSP.appendChild(cotTen);
                hangSP.appendChild(cotGia);
                hangSP.appendChild(cotSLM);
                
                // B5: đưa hàng vào table
                //bangOfSP.setAttribute('class', 'table table-bordered');
                bangOfSP.appendChild(hangSP);
            }
        }

        function XoaDongTrongTable() {
            var bangOfSP = document.getElementById('tblGioHang');
            while (bangOfSP.childNodes.length > 0)
                bangOfSP.removeChild(bangOfSP.childNodes[0]);
        }
        
        window.onload = function () {
            document.getElementById('btnMua').onclick = function () {
                var chkList = document.getElementsByClassName('sp');    // return Array
                for (var i = 0; i < chkList.length; i++) {
                    if (chkList[i].checked) {       // có chọn sp để nhấn Mua
                        var maSP = chkList[i].value; //alert(chkList[i].value);   // lấy value tức mã sp
                        var kq = -1;
                        for (var j = 0; j < dssp.length; j++) {
                            if (maSP == dssp[j].Ma) {     // tìm thấy sp đã nằm trong DSSP
                                kq = j; //alert(j);     // noted vị trí của i
                                break;
                            }
                        }
                        if (kq != -1) { // nếu kq != -1 , tức kq = i , và tìm thấy sp
                            // viết hàm thêm cho giỏ hàng tại đây
                            gh.Mua(dssp[kq], 1);
                            XoaDongTrongTable();
                            HienThiGH();
                        }
                    }
                }
                document.getElementById('tongTien').innerHTML = gh.TongTien().toString();//alert('test');
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-md-6">
            <div class="panel panel-info">
                <div class="panel-heading"><a href="#">Danh Sách Hàng Hóa</a></div>
                <div class="panel-body">
                    <div class="checkbox">
                        <label><input class="sp" type="checkbox" value="1" />Tivi SamSung G500</label>
                    </div>
                    <div class="checkbox">
                        <label><input class="sp" type="checkbox" value="2" />Dien Thoai Iphone 6</label>
                    </div>
                    <input type="button" value="Mua" id="btnMua" class="btn btn-info btn-sm" /><br />
                    <label class="label label-default">Tổng tiền</label> : <span id="tongTien">100</span>
                </div>
            </div>

            <table class="table-hover" id="tblGioHang">
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
