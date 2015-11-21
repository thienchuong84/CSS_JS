<%@ Page Language="C#" AutoEventWireup="true" CodeFile="C15C16_Menu_JAVASCRIPT.aspx.cs" Inherits="DOTNET0919_C15C16_Menu_JAVASCRIPT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            width: 100%;
            margin: auto;
        }
        ul#menu li {    /*tất cả the ul có id là menu, vào li của nó*/
            list-style: none;   /*bỏ dấu chấm phía trước*/
            width: 200px;       /*set độ rộng các thẻ li, quan trọng, liên quan tổng chiều dài menu*/
            background: #0094ff;
        }
        ul#menu li a {
            color: white;
            text-decoration: none;  /*bỏ gạch chân cho thẻ a trong menu*/
        }
        ul#menu li a:hover {
            color: red;
            background-color: cyan;
        }
        ul#menu>li {
            float: left;
        }
        ul.submenu {
            display: none;
        }
    </style>
    <script type="text/javascript">
        var sMenu = null;
        var handler = null;
        function HienThi(idMenu) {
            clearTimeout(handler);          // reset lại handler
            TatMenu();  // tắt menu hiện tại để mở menu mới
            sMenu = document.getElementById(idMenu);    // lấy id của submenu
            sMenu.style.display = "block";      // change CSS , từ none -> block
        }
        function TatMenu() {
            if (sMenu != null) sMenu.style.display = "none";
        }
        function SapTatMenu() {
            handler = setTimeout(TatMenu, 500); // sau 5s sẽ gọi function TatMenu()
        }
        function HuyTat() {
            if (handler != null)
                clearTimeout(handler); // xóa tgian 5s gọi TatMenu của function SapTatMenu
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <ul id="menu">
            <li>
                <a onmouseover="HienThi('m1');" onmouseout="SapTatMenu();" href="javascript:return void(0);">Sản Phẩm</a>
                <ul onmouseover="HuyTat();" onmouseout="SapTatMenu();" class="submenu" id="m1">
                    <li><a href="javascript:return void(0);">Máy Tính</a></li>
                    <li><a href="javascript:return void(0);">Máy Tính</a></li>
                </ul>
            </li>
            <li>
                <a onmouseover="HienThi('m2');" onmouseout="SapTatMenu();" href="javascript:return void(0);">Tin Tức</a>
                <ul onmouseover="HuyTat();" onmouseout="SapTatMenu();" class="submenu" id="m2">
                    <li><a href="javascript:return void(0);">Trong Nước</a></li>
                    <li><a href="javascript:return void(0);">Quốc Tế    </a></li>
                </ul>
            </li>
            <li><a href="javascript:return void(0);">Liên Hệ</a></li>
        </ul>
    </div>
    </form>
</body>
</html>
