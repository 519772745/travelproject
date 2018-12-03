﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ch">
<head>

        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
        <meta name="author" content="Ansonika">
        <title>微旅WeTrip</title>

        <!-- Favicons-->
        <link rel="shortcut icon" href="good/images/icon.ico" type="zone/image/x-icon">

        <!-- BASE CSS -->
        <!--link href="css/bootstrap.min.css" rel="stylesheet"-->

        <link href="good/css/vendors.css" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,700,600,800' rel='stylesheet' type='text/css'>
        <link href="good/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="good/css/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="good/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <link href="good/css/dataslider.css" rel="stylesheet">
        <link href="good/css/chosen.css" rel="stylesheet">
        <link href="good/css/flexslider.css" rel="stylesheet">

        <!--[if IE 7]>
      
        <link href="css/font-awesome/css/font-awesome-ie7.min.css" rel="stylesheet">
        
        <![endif]-->
        

        <link  rel="stylesheet" href="good/css/style.css">

        <link  rel="stylesheet" href="good/css/responsive.css">
        <style type="text/css">
            /*-------------------------- Theme Footer ----------------------*/
            .theme-footer {
              height: 168px;
              text-align: center;
              background:#76a68d;
              padding: 25px 0 1px 0;

          }
          .theme-footer .footer-text {
              font-size: 11px;
              letter-spacing: 0.4px;
              text-transform: uppercase;
              padding: 5px 0 5px 0;
          }
          .theme-footer .copyright {margin-top: 10px;font-family: 微软雅黑;font-size: 13px;color:#313131;}
          .container {height: 100%;}
      </style>
    </head>
    <body>
        <div class="wrapper">
            <section class="section-head">
             <header class="header menu_fixed">

                <div id="logo">
                    <a href="index.jsp">
                        <img src="good/images/logo_white.png" width="150" height="36" data-retina="true" alt="" class="logo_normal">
                        <img src="good/images/logo_black.png" width="150" height="36" data-retina="true" alt="" class="logo_sticky">
                    </a>
                </div>
                <ul id="top_menu">
                    <li><a href="editor.jsp"><img src="good/images/add_button1.png" width="24" height="24"></a></li>
                    <li><a href="login.jsp"><img src="good/images/personal_button1.png" width="24" height="24" onmouseover="over(this)" onclick="openUser(event)"></a></li>
                    <li><a href="cart.jsp"><img src="good/images/shopping_button1.png" width="24" height="24"></a></li>
                    <li><a href="personalinfo.jsp"><img src="good/images/config_button1.png" width="24" height="24"></a></li>

                </ul>
                <ul id="top_menu2">
                    <li><a href="editor.jsp"><img src="good/images/add_button.png" width="24" height="24" ></a></li>
                    <li><a href="login.jsp"><img src="good/images/personal_button.png" width="24" height="24" onmouseover="over(this)" onclick="openUser(event)" ></a></li>
                    <li><a href="cart.jsp"><img src="good/images/shopping_button.png" width="24" height="24" ></a></li>
                    <li><a href="personalinfo.jsp"><img src="good/images/config_button.png" width="24" height="24" ></a></li>
                </ul>  
                <div id="User">
                <a href="##">用户状态</a><br>
                <a href="zone.jsp" >个人空间页</a><br>
                <a href="##">注销</a>
                </div>
                <!-- /top_menu -->
                <a href="#menu" class="btn_mobile">
                    <div class="hamburger hamburger--spin" id="hamburger">
                        <div class="hamburger-box">
                            <div class="hamburger-inner"></div>
                        </div>
                    </div>
                </a>
                <nav id="menu" class="main-menu">
                    <ul>
                        <li><span><a href="index.jsp">首页</a></span></li>
                        <li><span><a href="part.jsp">风景</a></span></li>
                        <li><span><a href="part.jsp">美食</a></span></li>
                        <li><span><a href="part.jsp">玩耍</a></span></li>
                        <li><span><a href="part.jsp">周边</a></span></li>
                        <li><span><a href="part.jsp">小贴士</a></span></li>
                        <li><span><a href="dailytopic.jsp">今日话题</a></span></li>
                    </ul>
                </nav>

            </header>
        </section>



        <section class="section-two-columns">
            <div class="container">
                <div class="row-fluid">
                    <div class="span3">
                        <div class="sidebar">



                        </div> 



                        <div class="accordion-widget filter-accordions">

                            <div class="accordion" >




                            </div>


                        </div> 
                    </div>
                </div>
                <div class="span9 ">
                    <div class="page-content">
                        <div class="products-page-head">
                            <h1>WeTrip</h1>
                            <div class="tag-line">
                                - 自由的蚊子
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span7">
                                <div class="flexslider product-gallery">
                                    <ul class="slides">
                                        <li data-thumb="good/images/p1.jpg">
                                            <img alt=""  src="good/images/p1.jpg" />
                                        </li>
                                        <li data-thumb="good/images/p2.jpg">
                                            <img alt=""  src="good/images/p2.jpg" />
                                        </li>
                                        <li data-thumb="good/images/p3.jpg">
                                            <img alt="" src="good/images/p3.jpg" />
                                        </li>
                                        <li data-thumb="good/images/p4.jpg">
                                            <img alt="" src="good/images/p4.jpg" />
                                        </li>
                                        <li data-thumb="good/images/p5.jpg">
                                            <img alt="" src="good/images/p5.jpg" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="span5">
                                <div class="product-info-box">

                                    <div class="info-holder">
                                        <h4>微旅驱蚊液</h4>
                                        <p>
                                            商品描述
                                        </p>
                                    </div>
                                    <hr>
                                    <div class="drop-downs-holder">
                                        <div class="drop-selector capacity-selector">


                                        </div>

                                        <div class="drop-selector">
                                            <span>数量</span>
                                            <input min="1" type="number" id="quantity" name="quantity" value="1" class="quantity_one">
                                        </div>
                                    </div>

                                    <hr>
                                    <div class="price-holder">
                                        <div class="price">
                                            <span>¥99.00</span>
                                            <span class="old"></span>
                                        </div>
                                    </div>
                                    <div class="buttons-holder">
                                        <a class="cusmo-btn add-button" href="cart.jsp">加入购物车</a>

                                        <a class="add-to-wishlist-btn" href="##"><i class="icon-plus"></i> 加入心愿单</a>
                                    </div>
                                </div>


                            </div>


                        </div>
                        <div class="product-tabs">
                            <div class="controls-holder nav-tabs">
                                <ul class="inline">
                                    <li class="active"><a data-toggle="tab" href="#description">描述
                                        <li><a data-toggle="tab" href="#how-to-use">如何使用</a></li>
                                        <li><a data-toggle="tab" href="#reviews">评论(2)</a></li>
                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div id="description" class=" active tab-pane ">
                                        <p style="text-align: justify;font-family:微软雅黑;font-size:16px">
                                            这是一瓶驱蚊液。
                                        </p>
                                        <p style="text-align: justify;font-family:微软雅黑;font-size:16px">
                                            它真的真的真的真的真的真的非常好用。
                                        </p>
                                    </div>

                                    <div id="how-to-use" class=" tab-pane ">
                                        <p style="text-align: justify;font-family:微软雅黑;font-size:16px">
                                            小心使用。
                                        </p>
                                        <ul  style="text-align: justify;font-family:微软雅黑;font-size:16px">
                                            <li>1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；</li>
                                            <li>2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；</li>
                                            <li>3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；</li>
                                            <li>4、当药液用完，请将加热器拔离插座，然后更换补充药液。</li>
                                        </ul>
                                    </div>

                                    <div id="reviews" class=" tab-pane ">
                                        <textarea placeholder="请在这写下你的评论" class="span12" id="write-review-text"></textarea>

                                        <div class="review-info">
                                            <div class="remaining-chars">
                                                <span id="counter">210</span> characters left
                                            </div>

                                            <div class="star-holder">


                                                <button type="submit" class="cusmo-btn">评论</button>
                                            </div>
                                        </div>
                                        <hr>

                                        <div class="recent-reviews">
                                            <div class="review-item">
                                                <div class="row-fluid">
                                                    <div class="span2">
                                                        <div class="thumb">
                                                            <img alt="avatar" src="good/images/default-avatar.png" />
                                                        </div>
                                                    </div>
                                                    <div class="span10">
                                                        <div class="body">
                                                            <h4>Angela</h4>
                                                            <span class="date">2018.10.06</span>
                                                            <p style="text-indent: 2em;text-align: justify;font-family:微软雅黑;font-size:16px">
                                                                春眠不觉晓,处处蚊子咬。
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="review-item">
                                                <div class="row-fluid">
                                                    <div class="span2">
                                                        <div class="thumb">
                                                            <img alt="avatar" src="good/images/default-avatar.png" />
                                                        </div>
                                                    </div>
                                                    <div class="span10">
                                                        <div class="body">
                                                            <h4>Kate</h4>
                                                            <span class="date">2018.06.06</span>
                                                            <p style="text-indent: 2em;text-align: justify;font-family:微软雅黑;font-size:16px">
                                                                春眠不觉晓,处处蚊子咬。
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <hr>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <br><br>
                       <!--  <div class="middle-header-holder">
                           <div class="middle-header"> 你还可能喜欢</div>
                       </div> -->
                       <!-- <div class="products-holder related-products">
                       <div class="row-fluid"> -->
                           <!--  <div class="span4">
                                <div class="product-item">
                                    <img src="img/good1.jpg" width="200px" height="200px;">
                                </div>
                            </div>
                            <div class="span4">
                                <div class="product-item">
                                    <img src="img/good1.jpg" width="200px" height="200px;">
                                </div>
                            </div>
                            <div class="span4">
                                <div class="product-item">
                                    <img src="img/good1.jpg" width="200px" height="200px;">
                                </div>
                            </div> -->
                    <!--     </div>
                </div> -->
            </div>
        </div>
    </div>
</div>
</section>

<!-- <section class="section-homepage-subscribe">
    <div class="container">

    </div>
</section> -->

<!--footer-->
<footer class="theme-footer">
    <div class="container">
        <div class="logo"><a href="index.jsp"><img src="good/images/footer130.png" alt=""></a></div>       
        <p class="copyright">Copyright &copy; 2018.公司名字 All rights reserved.</p>
    </div> <!-- /.container -->
</footer> <!-- /.theme-footer -->
<!--/footer-->
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
<script src="good/css/bootstrap/js/bootstrap.min.js"></script>
<script src="good/js/jquery-2.2.4.min.js"></script>
<script src="good/js/common_scripts.js"></script>
<script src="good/js/main.js"></script>
<script type="text/javascript" src="good/js/css_browser_selector.js"></script>

<script type="text/javascript" src="good/js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="good/js/jquery.easing-1.3.js"></script>
<script type="text/javascript" src="good/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="good/js/jquery.raty.min.js"></script>
<script type="text/javascript" src="good/js/jquery.flexslider-min.js"></script>

<script type="text/javascript" src="good/js/bootstrap-slider.js"></script>

<script type="text/javascript" src="good/js/script.js"></script>

<script>
    $(window).on('load', function() {
        "use strict";
        $.instagramFeed({
            'username': 'restaurantetanit',
            'container': "#instagram-feed-restaurant",
            'display_profile': false,
            'display_biography': false,
            'display_gallery': true,
            'get_raw_json': false,
            'callback': null,
            'styling': true,
            'items': 12,
            'items_per_row': 6,
            'margin': 1
        });
    });
    //用户登录后的状态注销等
function over(obj){        
   document.getElementById("User").style.display = "block";

            }
window.onload = function(){
            document.onclick = function(e){
                e = e || window.event;
                var dom =  e.srcElement|| e.target;
                if(dom.id != "User" && document.getElementById("User").style.display == "block") {
                    document.getElementById("User").style.display = "none";
                }
            };
        };
</script>       
</body>


</html>
