<%@ Page Language="C#" AutoEventWireup="true" CodeFile="05_animate_effect.aspx.cs" Inherits="JAVA1103_05_animate_effect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <script src="../Scripts/jquery-ui.min.js"></script>
    <style type="text/css">
        .box1 {
            margin-right: 50px;
            width: 150px;
            height : 150px;
            background : #ff6a00;
            box-shadow: 10px 10px 50px yellow;
            border-radius: 10px;

            position: relative;
            overflow: hidden;
        }
        .info1 {
            width: 150px;
            height: 50px;
            background: yellow;

            position: absolute;
            top: -50px;
            border-radius: 10px;
        }

        .box2 {
            width: 150px;
            height : 150px;
            background : #ff6a00;
            box-shadow: 0 0 50px green;
            border-radius: 10px;

            position: relative;
            overflow: hidden;
        }
        .info2 {
            width: 150px;
            height: 50px;
            background: yellow;

            position: absolute;
            bottom: -50px;
            border-radius: 10px;
        }


        .boxNangCao {
            margin-right: 50px;
            width: 150px;
            height: 150px;
            background: #b6ff00;
            box-shadow: 0 0 50px red;
            border-radius: 10px;
            position: relative;
            overflow: hidden;
        }
        .infoNangCao {
            width: 150px;
            height: 50px;
            background: #ff6a00;
            border-radius: 10px;
            position:absolute;
            top: -50px;
        }
    </style>

    <script>
        $(function () {
            $(".box1").hover(function () {
                $(".info1").stop().animate({top: 0});
            }, function () {
                $(".info1").stop().animate({top: -50});
            });

            $(".box2").hover(function () {
                $(".info2").stop().animate({ bottom: 0 });
            }, function () {
                $(".info2").stop().animate({ bottom: -50 });
            });


            //$(".boxNangCao").hover(function () {
            //    $(".infoNangCao").stop().animate({ top: 0 });
            //}, function () {
            //    $(".infoNangCao").stop().animate({ top: -50 });
            //});
            $(".boxNangCao").hover(function () {
                $(this).find(".infoNangCao").stop().animate({top: 0});
            }, function () {
                $(this).find(".infoNangCao").stop().animate({top: -50});
            });
        });
    </script>
</head>
<body>
<div class="container"><br /><br />
    <p>Event Hover, css để che đi khoảng dư, dùng JS để edit css và làm xuất hiện lại</p>
    <div class="box1" style="float: left;">
        <div class="info1">Sử dụng sự kiện hover</div>
    </div>

    <div class="box2" style="float:left;">
        <div class="info2">Sử dụng sự kiện hover</div>
    </div>
</div><br /><br /><br />

<div class="container">
    <p>tương tự phần trên, nhưng với JS nâng cao. Viết 1 css và 1 JS cho 3 box có cùng class này, tuy nhiên khi rê chuột vào
        box nào, JS tự lấy được box này mà thực hiện event. Thay vì viết các CSS riêng lẽ như bài trên.<br /> Thực tế, đây là các
        sản phẩm trong danh sách sản phẩm, khi rê chuột vào sẽ có hiệu ứng
    </p>
    <div class="boxNangCao pull-left">
	    <div class="infoNangCao">Su dung su kien over</div>	
    </div>
    <div class="boxNangCao pull-left">
	    <div class="infoNangCao">Su dung su kien over</div>	
    </div>
    <div class="boxNangCao">
	    <div class="infoNangCao">Su dung su kien over</div>	
    </div>
</div>

</body>
</html>
