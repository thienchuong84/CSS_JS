<%@ Page Language="C#" AutoEventWireup="true" CodeFile="05_jquery_effects.aspx.cs" Inherits="JAVA1103_05_jquery_effects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Scripts/jquery-ui.min.css" rel="stylesheet" />

    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <script src="../Scripts/jquery-ui.min.js"></script>

    <style type="text/css">
        #hinhCauThu {
            width: 600px;
            height: 200px;
            overflow: hidden;

            float:left;
        }
        #hinhCauThu img {
            width: 200px;
            height: 200px;
        }



        #hinhCT {
            width: 800px;
            height: 200px;
            float: left;
            overflow: hidden;
        }
        #hinhCT img{
            width: 200px;
            height: 200px;
        }
    </style>

    <script>
        $(function () {
            $("#btnHide").click(function () {
                $("#imgShowHideToggle").hide(500);
            });
            $("#btnShow").click(function () {
                $("#imgShowHideToggle").show(500);
            });
            $("#btnToggle").click(function () {
                $("#imgShowHideToggle").toggle(500);
            });


            $("#btnLeft").click(function () {
                $("#hinhCauThu>img:first").hide(150, callback1);
            });
            $("#btnRight").click(btnImgRight);


            $("#btnLeft2").click(function () {
                $("#hinhCT>img:first").animate({ width: 0 }, 500, function () {
                    $("#hinhCT>img:first").appendTo("#hinhCT").animate({width: 200}, 500);
                });
            });
            $("#btnRight2").click(function () {
                $("#hinhCT>img:last").animate({ width: 0 }, 500, function () {
                    //$("#hinhCT>img:last").prependTo("#hinhCT").width(200);
                    $("#hinhCT>img:last").width(0).prependTo("#hinhCT").animate({width: 200}, 500);
                });
            });

        });

        function callback1() {
            $("#hinhCauThu>img:first").appendTo("#hinhCauThu").show(150);
        };
        function btnImgRight() {
            $("#hinhCauThu>img:last").hide(150, function () {
                $("#hinhCauThu>img:last").prependTo("#hinhCauThu").show(150);
            });
        };
    </script>

</head>
<body>
   
    <div>
        <button id="btnShow">Show Effects</button>
        <button id="btnHide">Hide Effects</button>
        <button id="btnToggle">Toggle Effects</button>
    </div>
    <img id="imgShowHideToggle" src="../Images/JAVA1103/congphuong.jpg" />

    

    <div class="container">
        <hr style="width: 50%; height: 1px; background-color:black;" />
        <div>
            <input type="button" id="btnLeft" class="btn btn-primary" value="Left" />
            <input type="button" id="btnRight" class="btn btn-info" value="right" />
        </div>
        <div id="hinhCauThu" class="row">
            <img src="../Images/JAVA1103/alexissanchez.jpg" /><img src="../Images/JAVA1103/congphuong.jpg" /><img src="../Images/JAVA1103/congving.jpg" /><img src="../Images/JAVA1103/giroud.jpg" /><img src="../Images/JAVA1103/hazard.jpg" />
        </div>
    </div>

    
    <div class="container">
        <hr style="width: 50%; height: 1px; background-color:black;" />
        <div class="row">
            <input type="button" id="btnLeft2" class="btn btn-primary" value="Left" />
            <input type="button" id="btnRight2" class="btn btn-info" value="right" />
        </div>
        <div id="hinhCT" class="row">
            <img src="../Images/JAVA1103/alexissanchez.jpg" /><img src="../Images/JAVA1103/congphuong.jpg" /><img src="../Images/JAVA1103/congving.jpg" /><img src="../Images/JAVA1103/giroud.jpg" /><img src="../Images/JAVA1103/hazard.jpg" />
        </div>
    </div>


</body>
</html>
