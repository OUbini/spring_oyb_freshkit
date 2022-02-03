<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>FRESHKIT</title>
	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>
<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
        </div>
        <div class="humberger__menu__widget">
        	<div class="header__top__right__auth">
            	<a href="<c:url value="/add/addForm" />">
                <i class="fa fa-user"></i> Join</a>
            </div>							                        
            <div class="header__top__right__auth">
                <a href="<c:url value="/login/loginForm" />">
                <i class="fa fa-user"></i> Login</a>
            </div>
            <div class="header__top__right__auth">
                <a href="<c:url value="#" />">
                <i class="fa fa-shopping-bag"></i>Cart</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> mandubin02@naver.com</li>
                                <li>Welcome To FRESHKIT website!</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__auth">
                                <a href="<c:url value="/add/addForm" />">
                                <i class="fa fa-user"></i> Join</a>
                            </div>							                        
                            <div class="header__top__right__auth">
                                <a href="<c:url value="/login/loginForm" />">
                                <i class="fa fa-user"></i> Login</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="<c:url value="#" />">
                                <i class="fa fa-shopping-bag"></i>Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header__logo">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                </div>                            
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>전체 카테고리</span>
                        </div>
                        <ul>
                            <li><a href="<c:url value="/product/bestProduct" />">베스트상품</a></li>
                            <li><a href="<c:url value="/product/newProduct" />">신상품</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=western" />">양식</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=korean" />">한식</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=chinese" />">중식</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=japanese" />">일식</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=side" />">반찬</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=lns" />">야식/분식</a></li>
                            <li><a href="<c:url value="/product/categoryProduct?category=dessert" />">디저트/과일</a></li>
                            <li><a href="<c:url value="/board/notice" />">공지사항</a></li>
                            <li><a href="<c:url value="/board/ask" />">문의게시판</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    검색종류
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="검색어를 입력하세요."/>
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="header__menu">
                        	<ul class="list-group list-group-horizontal">
                            	<li><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            	문의</a></li>
                            	<li><a href="#">공지사항</a></li>
                        	</ul>
                    	</div>
                    </div>
                    <div class="hero__item set-bg" 
                    data-setbg="${pageContext.request.contextPath}/resources/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

	<!-- ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
	ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
	ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
	ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
	ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ -->
    <!-- Categories Section Begin -->
    <!-- 각각 종류별로 넘어갈때 맞는 클릭하면 값이 넘어가도록 하기. category명이 함께 넘어갈 수 있도록 --> 
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-1.jpg">
                            <h5><a href="#">양식</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-2.jpg">
                            <h5><a href="#">한식</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-3.jpg">
                            <h5><a href="#">중식</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-4.jpg">
                            <h5><a href="#">일식</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-5.jpg">
                            <h5><a href="#">반찬</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-4.jpg">
                            <h5><a href="#">야식/분식</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/categories/cat-3.jpg">
                            <h5><a href="#">디저트/과일</a></h5>
                        </div>
                    </div>                                        
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
        
        	<!-- 베스트제품 대표목록 4가지 -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2><!-- <a href="<c:url value="/product/newProduct" />"> </a>-->Best Product</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            
            <c:forEach var="bestProduct" items="${bestProductList}" begin="1" end="4">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/featured/${bestProduct.image}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${bestProduct.name}</a></h6>
                            <h5><fmt:formatNumber value="${bestProduct.amount}" type="currency"/></h5>                            
                        </div>
                    </div>
                </div>
			</c:forEach>                            
            </div>
            
            
            <!-- 신제품 대표목록 4가지 -->
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2><!-- <a href="<c:url value="/product/newProduct" />"> </a>-->New Product</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            
            <c:forEach var="newProduct" items="${newProductList}" begin="1" end="4">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" 
                        data-setbg="${pageContext.request.contextPath}/resources/img/featured/${newProduct.image}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${newProduct.name}</a></h6>
                            <h5><fmt:formatNumber value="${newProduct.amount}" type="currency"/></h5>                            
                        </div>
                    </div>
                </div>
			</c:forEach>   
			                         
            </div>            
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <a href="<c:url value="/board/notice" />">
                        <img src="${pageContext.request.contextPath}/resources/img/banner/banner-1.jpg"></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <a href="<c:url value="/board/ask" />">
                        <img src="${pageContext.request.contextPath}/resources/img/banner/banner-2.jpg"></a>                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">     
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title from-blog__title">
                        <h2>공지사항</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-title from-blog__title">
                        <h2>문의</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            <c:forEach var="notice" items="${noticeList}" begin="1" end="3">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> ${notice.bdate}</li>
                            </ul>
                            <h5><a href="#">${notice.title}</a></h5>
                            <p>${notice.content}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>    
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>



[<a href="<c:url value="/myPage" />">마이페이지</a>]

<sec:authorize access="isAuthenticated()">
<p><sec:authentication property="principal.member.name"/>님 환영합니다!</p>
</sec:authorize>

<h3>
    [<a href="<c:url value="/user/userHome" />">유저 홈</a>]
    [<a href="<c:url value="/admin/adminHome" />">관리자 홈</a>]
</h3>
<h3>
	[<a href="<c:url value="/board/notice" />">공지사항</a>]
	[<a href="<c:url value="/board/ask" />">문의</a>]
	[<a href="<c:url value="/product/allProduct" />">전체제품목록</a>]
	[<a href="<c:url value="/product/bestProduct" />">베스트제품목록</a>]	
	[<a href="<c:url value="/product/newProduct" />">신제품목록</a>]	
</h3>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
