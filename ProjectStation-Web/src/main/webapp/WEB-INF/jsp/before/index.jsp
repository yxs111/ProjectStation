<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 98023
  Date: 2019/7/1
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Meghna One page parallax responsive HTML Template ">

    <meta name="author" content="Muhammad Morshed">

    <title>诺亚计划项目站</title>

    <!-- Mobile Specific Meta
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png" />

    <!-- CSS
    ================================================== -->
    <!-- Fontawesome Icon font -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Animate.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
    <!-- Grid Component css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/component.css">
    <!-- Slit Slider css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slit-slider.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <!-- Media Queries -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/media-queries.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
    <!--
    Google Font
    =========================== -->

    <!-- Oswald / Title Font -->
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
    <!-- Ubuntu / Body Font -->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300' rel='stylesheet' type='text/css'>

    <!-- Modernizer Script for old Browsers -->
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>


    <%--<script type="text/javascript">

        $(function(){

            //div 两个哪个显示呢？
            if(null!="${sessionScope.userAccount}" && "${sessionScope.userAccount}" !=""){
                $("#regBlock").css("display","none");
                $("#userBlock").css("display","block");
            }else{
                $("#regBlock").css("display","block");
                $("#userBlock").css("display","none");
            }

        });
    </script>--%>
    <%--<style>
        .swiper-container {
            width: 600px;
            height: 300px;
        }
    </style>--%>




</head>

<body id="body">
<%--<div id="qrcode">大师傅士大夫</div>
<div id="qrcode2">撒大苏打</div>
<button onclick="aa()">sdfsdf</button>
<script>
    function aa() {

        alert("sdsd");
        jQuery('#qrcode').qrcode("http://qm.qq.com/cgi-bin/qm/qr?k=ygZ9YnZuGQo75rhxn9qdErqOlD2L01d_");
        jQuery('#qrcode2').qrcode("https://u.wechat.com/MMqDTYK4JZa7u0TmoOGWmXE");
        //document.getElementById("qrcode").style.display="none";
    }
    
    function showVX(obj) {
        // alert(obj);
        $("#21").text(obj);
        $("#21").qrcode(obj);
    }

</script>--%>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <img class="swiper-slide" src="${pageContext.request.contextPath}/img/banner-10.jpg"  alt="11"/>
        <img class="swiper-slide" src="${pageContext.request.contextPath}/img/banner-11.jpg"  alt="23"/>
        <img class="swiper-slide" src="${pageContext.request.contextPath}/img/banner-1.jpg" alt="2424"/>
        <img class="swiper-slide" src="${pageContext.request.contextPath}/img/banner-6.jpg" alt="1"/>

    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>

    <!-- 如果需要导航按钮 -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>

    <!-- 如果需要滚动条 -->
    <div class="swiper-scrollbar"></div>
</div>
<!--
Start Preloader
==================================== -->
<div id="loading-mask">
    <div class="loading-img">
        <img alt="Meghna Preloader" src="${pageContext.request.contextPath}/img/preloader.gif"  />
    </div>
</div>
<!--
End Preloader
==================================== -->

<!--
Welcome Slider
==================================== -->
<section id="home">

    <div id="slitSlider" class="sl-slider-wrapper">
        <div class="sl-slider">

            <!-- single slide item -->
            <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                <div class="sl-slide-inner">
                    <div class="bg-img bg-img-1"></div>
                    <div class="carousel-caption">
                        <div>
                            <!--src="img/meghna.png"-->
                            <img class="wow fadeInUp" src="${pageContext.request.contextPath}/img/logo0701_1.png" alt="Meghna">
                            <h2 data-wow-duration="500ms"  data-wow-delay="500ms" class="heading animated fadeInRight">千锋Java项目站</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /single slide item -->

            <!-- single slide item -->
            <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                <div class="sl-slide-inner">
                    <div class="bg-img bg-img-2"></div>
                    <div class="carousel-caption">
                        <div>
                            <h2 class="heading animated fadeInDown">Highly Responsive</h2>
                            <h3 class="animated fadeInUp">With all Mejor Browser support including IE 9</h3>
                            <a class="btn btn-green animated fadeInUp" href="#">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /single slide item -->

            <!-- single slide item -->
            <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                <div class="sl-slide-inner">
                    <div class="bg-img bg-img-3"></div>
                    <div class="carousel-caption">
                        <div>
                            <h2 class="heading animated fadeInRight">One Page Parallax HTML Template</h2>
                            <h3 class="animated fadeInLeft">Clean and Professional Design</h3>
                            <a class="btn btn-green animated fadeInUp" href="#">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /single slide item -->

        </div><!-- /sl-slider -->

        <nav id="nav-arrows" class="nav-arrows">
            <span class="nav-arrow-prev">Previous</span>
            <span class="nav-arrow-next">Next</span>
        </nav>

        <nav id="nav-dots" class="nav-dots">
            <span class="nav-dot-current"></span>
            <span></span>
            <span></span>
        </nav>

    </div><!-- /slider-wrapper -->
</section>
<!--/#home section-->

<!--
Fixed Navigation
==================================== -->
<header id="navigation" class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <a class="navbar-brand" href="#body">
                <h1 id="logo">
                    <img src="${pageContext.request.contextPath}/img/logo0701_1.png" style="width: 50%;height: 50%" alt="Meghna" />
                </h1>
            </a>
            <!-- /logo -->
        </div>

        <!-- main nav -->
        <nav class="collapse navbar-collapse navbar-right" role="Navigation">
            <ul id="nav" class="nav navbar-nav">
                <li class="current"><a href="#body">首页</a></li>
                <li><a href="#about">关于我们</a></li>
                <!--<li><a href="#services">Services</a></li>-->
                <li><a href="#showcase">项目展示</a></li>
                <li><a href="#our-team">讲师风采</a></li>

                <%--<li id="regBlock" style="display:none;float:right">
                    <a href="javascript:;" id="reg_open"><img src="${pageContext.request.contextPath}/img/we.png" alt="dd">注册</a>
                    <a href="javascript:;" id="login_open"><img src="${pageContext.request.contextPath}/img/we.png" alt="dd">登录</a>
                </li>

                <li id="userBlock" style="display:none;float:right">

                    <a href="javascript:;" id="loginout">退出</a>
                    <a href="user/showMyProfile.action" id="account">${sessionScope.userAccount}</a>
                </li>--%>
                <!--<li><a href="#pricing">Pricing</a></li>-->
                <!--<li><a href="#blog">Blog</a></li>-->
                <!--<li><a href="#contact-us">Contact</a></li>-->
            </ul>

        </nav>
        <!-- /main nav -->
        <div id="regBlock" style="margin-top:23px; display:none;float:right">
            <a href="javascript:;" id="reg_open"><img src="${pageContext.request.contextPath}/img/we.png" alt="dd">注册</a>
            <a href="javascript:;" id="login_open"><img src="${pageContext.request.contextPath}/img/we.png" alt="dd">登录</a>
        </div>

        <div id="userBlock" style="display:none;float:right">

            <a href="javascript:;" id="loginout">退出</a>
            <a href="user/showMyProfile.action" id="account">${sessionScope.userAccount}</a>
        </div>

    </div>

</header>
<!--
End Fixed Navigation
==================================== -->

<!--
Start About Section
==================================== -->
<section id="about" class="bg-one">
    <div class="container">
        <div class="row">

            <!-- section title -->
            <div class="title text-center wow fadeIn" data-wow-duration="1500ms" >
                <h2>关于 <span class="color">我们</span></h2>
                <div class="border"></div>
            </div>
            <!-- /section title -->

            <!-- About item -->
            <div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" >
                <div class="wrap-about">
                    <div class="icon-box">
                        <i class="fa fa-lightbulb-o fa-4x"></i>
                    </div>
                    <!-- Express About Yourself -->
                    <div class="about-content text-center">
                        <h3 class="ddd">思想·源泉</h3>
                        <p>思想可以束缚我们，也可以使我们获得自由。</p>
                    </div>
                </div>
            </div>
            <!-- End About item -->

            <!-- About item -->
            <div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="250ms">
                <div class="wrap-about">
                    <div class="icon-box">
                        <i class="fa fa-users fa-4x"></i>
                    </div>
                    <!-- Express About Yourself -->
                    <div class="about-content text-center">
                        <h3>团队·前锋</h3>
                        <p>许德·杨爱民·胡三春·王虚鲲</p>
                    </div>
                </div>
            </div>
            <!-- End About item -->

            <!-- About item -->
            <div class="col-md-4 text-center wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
                <div class="wrap-about kill-margin-bottom">
                    <div class="icon-box">
                        <i class="fa fa-users fa-4x"></i>
                    </div>
                    <!-- Express About Yourself -->
                    <div class="about-content text-center">
                        <h3>团队·后卫</h3>
                        <p>张丽萍·岳喜申·狄达平</p>
                    </div>
                </div>
            </div>
            <!-- End About item -->

        </div> 		<!-- End row -->
    </div>   	<!-- End container -->
</section>   <!-- End section -->

<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

<!--
Start Counter Section
==================================== -->

<section id="counter" class="parallax-section">
    <div class="container">
        <div class="row">

            <!-- first count item -->
            <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms">
                <div class="counters-item">
                    <div>
                        <span data-speed="3000" data-to="320">320</span>
                    </div>
                    <i class="fa fa-users fa-3x"></i>
                    <h3>成员数量</h3>
                </div>
            </div>
            <!-- end first count item -->

            <!-- second count item -->
            <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
                <div class="counters-item">
                    <div>
                        <span data-speed="3000" data-to="565">565</span>
                    </div>
                    <i class="fa fa-check-square fa-3x"></i>
                    <h3>已完成项目数</h3>
                </div>
            </div>
            <!-- end second count item -->

            <!-- third count item -->
            <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
                <div class="counters-item">
                    <div>
                        <span data-speed="3000" data-to="95">95</span>
                        <span>%</span>
                    </div>
                    <i class="fa fa-thumbs-up fa-3x"></i>
                    <h3>好评率</h3>

                </div>
            </div>
            <!-- end third count item -->

            <!-- fourth count item -->
            <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                <div class="counters-item kill-margin-bottom">
                    <div>
                        <span data-speed="3000" data-to="2500">2500</span>
                    </div>
                    <i class="fa fa-coffee fa-3x"></i>
                    <h3>包括未完成总项目数</h3>
                </div>
            </div>
            <!-- end fourth count item -->

        </div> 		<!-- end row -->
    </div>   	<!-- end container -->
</section>   <!-- end section -->


<!-- Start Services Section
==================================== -->

<!-- Start Portfolio Section
=========================================== -->

<section id="showcase">
    <div class="container">
        <div class="row wow fadeInDown" data-wow-duration="500ms">
            <div class="col-lg-12">

                <!-- section title -->
                <div class="title text-center">
                    <h2>项目 <span class="color">展示</span></h2>
                    <div class="border"></div>
                </div>
                <!-- /section title -->

                <!-- 这里循环遍历技术类型，展示技术类型 -->
                <div class="portfolio-filter clearfix">
                    <ul class="text-center">
                        <li><a href="javascript:void(0)" class="filter" data-filter="all">所有</a></li>
                        <c:forEach items="${scienceList}" var="science">
                            <li><a href="javascript:void(0)" class="filter" data-filter=".${science.scienceName}">${science.scienceName}</a></li>
                        </c:forEach>

                    </ul>
                </div>
                <!-- /循环遍历技术类型，展示技术类型 -->

            </div> <!-- /end col-lg-12 -->
        </div> <!-- end row -->
    </div>	<!-- end container -->

    <!-- portfolio items -->
    <div class="portfolio-item-wrapper wow fadeInUp" data-wow-duration="500ms">
        <ul id="og-grid" class="og-grid">

            <c:forEach items="${projectList}" var="project">
                <li class="mix ${project.scienceName}">
                    <a href="${project.projectUrl}" data-largesrc="${project.projectImgUrl}" data-title="${project.projectName}" data-description="${project.projectDetail}">
                        <img src="${project.projectImgUrl}" alt="Meghna">
                        <div class="hover-mask">
                            <h3>${project.projectName}</h3>
                            <span>
                                <i class="fa fa-plus fa-2x"></i>
                            </span>
                        </div>
                    </a>
                </li>
            </c:forEach>

        </ul> <!-- end og grid -->
    </div>  <!-- portfolio items wrapper -->

</section>   <!-- End section -->


<!-- Start Team Skills
=========================================== -->

<!-- Start Our Team
=========================================== -->

<section id="our-team">
    <div class="container">
        <div class="row">

            <!-- section title -->
            <div class="title text-center wow fadeInUp" data-wow-duration="500ms">
                <h2>讲师 <span class="color">风采</span></h2>
                <div class="border"></div>
            </div>
            <!-- /section title -->

            <c:forEach items="${speakerList}" var="speaker">
                <!-- team member -->
                <div class="col-md-3 col-sm-6 wow fadeInDown" data-wow-duration="500ms">
                    <article class="team-mate">
                        <div class="member-photo">
                            <!-- member photo -->
                            <img class="img-responsive" style="width: 300px; height: 230px" src="${speaker.speakerImgUrl}" alt="Meghna">
                            <!-- /member photo -->

                            <!-- member social profile -->
                            <div class="mask">

                                <ul class="clearfix">

                                    <li><a id="vxQrCode" href="javascript:void(0)"><i class="fa fa-comments-o"></i></a></li>

                                    <li><a id="qqQrCode" href="javascript:void(0)"><i class="fa fa-qq"></i></a></li>
                                </ul>
                            <div class="mask" style="margin-left: 50px">
                                <img style="margin-left: 0px" class="img-responsive" id="vxshow" src="${speaker.vxQrCode}" alt="111"/>
                                <img style="margin-right: 100px" class="img-responsive" id="qqshow" src="${speaker.qqQrCode}" alt="111"/>
                            </div>

                            </div>



                            <!-- /member social profile -->
                        </div>

                        <!-- member name & designation -->
                        <div class="member-title">
                            <h3>${speaker.speakerName}</h3>
                            <span>${speaker.jobName}</span>
                        </div>
                        <!-- /member name & designation -->

                        <!-- about member -->
                        <div class="member-info">

                            <p>${speaker.speakerDetail}</p>
                            <a href="javascript:void(0)"><span id="11" class="fa fa-comments-o" onclick="showVX('this.${speaker.vxQrCode}')"/></a>
                            <a href="javascript:void(0)"><span id="12" class="fa fa-qq" /></a>
                            <div id="21"></div>



                        </div>
                        <!-- /about member -->

                    </article>
                </div>
                <!-- end team member -->
            </c:forEach>

        </div>  	<!-- End row -->
    </div>   	<!-- End container -->

</section>   <!-- End section -->


<!-- Start Twitter Feed
=========================================== -->

<section id="twitter-feed" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">

                <!-- twitter bird -->
                <div class="twitter-bird wow fadeInDown" data-wow-duration="500ms">
							<span>
								<i class="fa fa-arrow-circle-down fa-4x"></i>
							</span>
                </div>
                <!-- /twitter bird -->

                <!-- fetching tweet -->
                <div class="tweet wow fadeIn" data-wow-duration="2000ms"></div>
                <!-- /fetching tweet -->

                <!-- follow us button -->
                <a href="http://zz.mobiletrain.org/?pinzhuanbdtg=biaoti" title="Follow Us" target="_blank" class="btn btn-transparent wow fadeInUp" data-wow-duration="500ms">关注我们</a>
                <!-- /follow us button -->

            </div>
        </div>       <!-- End row -->
    </div>   	<!-- End container -->
</section>   <!-- End section -->

<footer id="footer" class="bg-one">
    <div class="container">
        <div class="row wow fadeInUp" data-wow-duration="500ms">
            <div class="col-lg-12">

                <!-- copyright -->
                <div class="copyright text-center">
                    <a href="index.html">
                        <img src="${pageContext.request.contextPath}/img/logo0701_1.png" alt="Meghna" />
                    </a>
                    <br />

                    <p>此网站由<a href="#"> 诺亚计划</a>团队制作</p>
                </div>
                <!-- /copyright -->

            </div> <!-- end col lg 12 -->
        </div> <!-- end row -->
    </div> <!-- end container -->
</footer> <!-- end footer -->

<!-- Back to Top
============================== -->
<a href="javascript:;" id="scrollUp">
    <i class="fa fa-angle-up fa-2x"></i>
</a>

<!-- end Footer Area
========================================== -->
<!--登录注册弹出框-->
<div class="mask hidden" id="login" >
    <div class="mask_content">
        <div class="mask_content_header">
            <img src="${pageContext.request.contextPath}/img/logo0701_1.png" alt="" class="ma">
        </div>
        <div class="mask_content_body">
            <form id="loginForm" action="#">
                <h3>快速登录</h3>
                <input type="email" id="loginEmail" placeholder="请输入邮箱" name="email">
                <input type="password" id="loginPassword" placeholder="请输入密码" name="password">
                <div id="forget">
                    <a href="${pageContext.request.contextPath}/user/forgetPassword.action">忘记密码？</a>
                </div>
                <input type="submit" onclick="return commitLogin()" value="登&#x3000;录">
            </form>
        </div>
        <div class="mask_content_footer">
            <span id="login_close">关&#x3000;闭</span>
        </div>
    </div>
</div>
<div class="mask hidden" id="reg">
    <div class="mask_content">
        <div class="mask_content_header">
            <img src="${pageContext.request.contextPath}/img/logo0701_1.png" alt="" class="ma">
        </div>
        <div class="mask_content_body">
            <form id="regForm" action="user/insertUser.actions">
                <h3>新用户注册</h3>
                <input type="email" id="regEmail" placeholder="请输入邮箱" name="email"><span id="emailMsg"></span>
                <input type="password" id="regPsw" placeholder="请输入密码" name="password">
                <input type="password" id="regPswAgain" placeholder="请再次输入密码" name="psw_again"><span id="passMsg"></span>
                <div id="yzm" class="form-inline">
                    <input type="text" name="yzm" style="width: 45%; display: inline-block;">
                    <div id="v_container" style="width: 45%;height: 40px;float:right;"></div>
                </div>
                <input type="submit" onclick="return commitRegForm();" value="注&#x3000;册">
            </form>
        </div>
        <div class="mask_content_footer">
            <span id="reg_close">关&#x3000;闭</span>
        </div>
    </div>
</div>
<!--
Essential Scripts
=====================================-->

<!-- Main jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<!-- Bootstrap 3.1 -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- Slitslider -->
<script src="${pageContext.request.contextPath}/js/jquery.slitslider.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ba-cond.min.js"></script>
<!-- Parallax -->
<script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
<!-- Owl Carousel -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!-- Portfolio Filtering -->
<script src="${pageContext.request.contextPath}/js/jquery.mixitup.min.js"></script>
<!-- Custom Scrollbar -->
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
<!-- Jappear js -->
<script src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
<!-- Pie Chart -->
<script src="${pageContext.request.contextPath}/js/easyPieChart.js"></script>
<!-- jQuery Easing -->
<script src="${pageContext.request.contextPath}/js/jquery.easing-1.3.pack.js"></script>
<!-- tweetie.min -->
<script src="${pageContext.request.contextPath}/js/tweetie.min.js"></script>

<!-- Highlight menu item -->
<script src="${pageContext.request.contextPath}/js/jquery.nav.js"></script>
<!-- Sticky Nav -->
<script src="${pageContext.request.contextPath}/js/jquery.sticky.js"></script>
<!-- Number Counter Script -->
<script src="${pageContext.request.contextPath}/js/jquery.countTo.js"></script>
<!-- wow.min Script -->
<script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
<!-- For video responsive -->
<script src="${pageContext.request.contextPath}/js/jquery.fitvids.js"></script>
<!-- Grid js -->
<script src="${pageContext.request.contextPath}/js/grid.js"></script>
<!-- Custom js -->
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

<script src="${pageContext.request.contextPath}/js/index.js"></script>

<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>

<script>
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'horizontal', // 垂直切换选项
        loop: true, // 循环模式选项

        // 如果需要分页器
        pagination: {
            el: '.swiper-pagination',
        },

        // 如果需要前进后退按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        // 如果需要滚动条
        scrollbar: {
            el: '.swiper-scrollbar',
        },
    })
</script>

</body>
</html>
