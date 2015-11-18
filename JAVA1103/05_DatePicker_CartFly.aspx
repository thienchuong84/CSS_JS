<%@ Page Language="C#" AutoEventWireup="true" CodeFile="05_DatePicker_CartFly.aspx.cs" Inherits="JAVA1103_05_DatePicker_CartFly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <script src="../Scripts/jquery-ui.min.js"></script>

    <style type="text/css">
        #hinh .box {
            height: 200px;
            border: 1px dashed green;
        }

        #hinh>.box>img {
            height: 120px;
        }

        .cart {
            position: fixed;
            bottom: 5px;
            right:5px;
            width: 50px;
        }
    </style>
    <style id="cart_fly" type="text/css">
        .cart_fly {
            /*background: yellow;*/
            background: url("../Images/JAVA1103/giroud.jpg");
            background-size: 100% 100%;
        }

        .cart_fly{background: url('../Images/JAVA1103/congphuong.jpg'),background-size: 100% 100%;}
    </style>

    <script>
        $(function () {
            $(".date1").datepicker();
            $(".date2").datepicker({ dateFormat: 'dd-mm-yy' });
            $(".date3").datepicker({ dateFormat: 'dd-mm-yy', minDate: '-2D', maxDate: '5D' });
            $(".date4").datepicker({ dateFormat: 'dd-mm-yy', minDate: '-1M', maxDate: '5D1Y' });


            $(".box .btnMua").click(function () {
                //$(".item").effect("transfer", {to:".cart", className:'cart_fly'}, 1000);        //alert("test");

                //$(".item").effect("transfer", { to: ".cart", className: 'cart_fly' }, 1000, function () {
                //    $(".cart").effect("bounce", 500);
                //});

                //$(this).parents(".box").find(".item").effect("transfer", { to: ".cart", className: 'cart_fly' }, 1000, function () {
                //    $(".cart").effect("bounce", 500);
                //});

                var hinhSP = $(this).parents(".box").find(".item");    // lấy được thẻ image tại ví trị đó
                srcImage = hinhSP.attr("src");      // lấy được link ảnh , test : alert(srcImage);
                
                cssPrepare = ".cart_fly{background: url('?'); background-size: 100% 100%;}";
                cssNewCartFly = cssPrepare.replace('?', srcImage);    // lấy link ảnh đặt vào CLASS .cart_fly , test: alert(css_cartFly);
                
                $("#cart_fly").html(cssNewCartFly);   // replace id cart_fly băng css mới ở trên
                hinhSP.effect("transfer", { to: ".cart", className: "cart_fly" }, 1000, function () {
                    $(".cart").effect("bounce", 500);   // rung giỏ hàng
                });
            });

        });
    </script>
</head>
<body>
    <img class="img-rounded cart" src="../Images/JAVA1103/shoppingcart.gif" />

    <div class="container">
        <p>DatePicker with different format</p>
        <input class="date1" />
        <input class="date2" />
        <input class="date3" />
        <input class="date4" />
    </div><br /><br />

    <div id="hinh" class="container" style="border:1px dashed red;">
        <div class="col-md-3 box">
                <img class="img-rounded item" src="../Images/JAVA1103/congphuong.jpg" />
                <div class="pull-right" style="border:1px dashed red;">
                    <input class="btn btn-default btn-lg btnMua" type="button" value="btn-lg" /><br />
                    Giá:100000 vnđ
                </div>
        </div>
        <div class="col-md-3 box">
            <img class="img-rounded item" src="../Images/JAVA1103/hazard.jpg" />
            <div><input class="btn btn-primary btnMua" type="button" value="Chọn" /><br />Giá:100000 vnđ</div>
        </div>
        <div class="col-md-3 box">
                <img class="img-rounded item" src="../Images/JAVA1103/congphuong.jpg" />
                <div class="pull-right" style="border:1px dashed red;">
                    <input class="btn btn-info btnMua" type="button" value="Chọn" /><br />
                    Giá:100000 vnđ
                </div>
        </div>
        <div class="col-md-3 box">
            <img class="img-rounded item" src="../Images/JAVA1103/hazard.jpg" />
            <div><input class="btn btn-danger btnMua" type="button" value="Chọn" /><br />Giá:100000 vnđ</div>
        </div>
        <div class="col-md-3 box">
                <img class="img-rounded item" src="../Images/JAVA1103/congphuong.jpg" />
                <div class="pull-right" style="border:1px dashed red;">
                    <input class="btn btn-warning btn-sm btnMua" type="button" value="btn-sm" /><br />
                    Giá:100000 vnđ
                </div>
        </div>
        <div class="col-md-3 box">
            <img class="img-rounded item" src="../Images/JAVA1103/hazard.jpg" />
            <div><input class="btn btn-success btn-xs btnMua" type="button" value="btn-sm" /><br />Giá:100000 vnđ</div>
        </div>
        
        <div id="test"></div>
    </div>
</body>
</html>
