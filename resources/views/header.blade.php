﻿@extends('Shared.layout');
<body>
	<!--[if lte IE 9]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

    <!-- header area start -->
    <header class="header-pos">
        <div class="header-top black-bg">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="header-top-left">
                            <ul>
                                <li><span>Email: </span>support@sinrato.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="box box-right">
                            <ul>
                                <li class="settings">
                                    <a class="ha-toggle" href="#">My Account<span class="lnr lnr-chevron-down"></span></a>
                                    <ul class="box-dropdown ha-dropdown">
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="login.html">Login</a></li>
                                    </ul>
                                </li>
                                <li class="settings">
                                    <a class="ha-toggle" href="#">Language<span class="lnr lnr-chevron-down"></span></a>
                                    <ul class="box-dropdown ha-dropdown">
                                        <li><a href="login.html"><img src="assets/img/icon/en.png" alt=""> English</a></li>
                                        <li><a href="login.html"><img src="assets/img/icon/ge.png" alt=""> Germany</a></li>
                                    </ul>
                                </li>
                                <li class="currency">
                                    <a class="ha-toggle" href="#">Currency<span class="lnr lnr-chevron-down"></span></a>
                                    <ul class="box-dropdown ha-dropdown">
                                        <li><a href="login.html">€ Euro</a></li>
                                        <li><a href="login.html">$ US Doller</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-12">
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo-sinrato.png" alt="brand-logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12 order-sm-last">
                        <div class="header-middle-inner">
                            <form action="https://htmldemo.net/sinrato/sinrato/method">
                                <div class="top-cat hm1">
                                    <div class="search-form">
                                         <select>
                                            <optgroup label="Electronics">
                                                <option value="volvo">Laptop</option>
                                                <option value="saab">watch</option>
                                                <option value="saab">air cooler</option>
                                                <option value="saab">audio</option>
                                                <option value="saab">speakers</option>
                                                <option value="saab">amplifires</option>
                                            </optgroup>
                                            <optgroup label="Fashion">
                                                <option value="mercedes">Womens tops</option>
                                                <option value="audi">Jeans</option>
                                                <option value="audi">Shirt</option>
                                                <option value="audi">Pant</option>
                                                <option value="audi">Watch</option>
                                                <option value="audi">Handbag</option>
                                            </optgroup>
                                        </select> 
                                    </div>
                                </div>
                                <input type="text" class="top-cat-field" placeholder="Search entire store here">
                                <input type="button" class="top-search-btn" value="Search">
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8 col-12 col-sm-8 order-lg-last">
                        <div class="mini-cart-option">
                            <ul>
                                <li class="compare">
                                    <a class="ha-toggle" href="compare.html"><span class="lnr lnr-sync"></span>Product compare</a>
                                </li>
                                <li class="wishlist">
                                    <a class="ha-toggle" href="wishlist.html"><span class="lnr lnr-heart"></span><span class="count">1</span>wishlist</a>
                                </li>
                                <li class="my-cart">
                                    <a class="ha-toggle" href="#"><span class="lnr lnr-cart"></span><span class="count">2</span>my cart</a>
                                    <ul class="mini-cart-drop-down ha-dropdown">
                                        <li class="mb-30">
                                            <div class="cart-img">
                                                <a href="product-details.html"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                            </div>
                                            <div class="cart-info">
                                                <h4><a href="product-details.html">Koss Porta Pro On Ear  Headphones </a></h4>
                                                <span> <span>1 x </span>£165.00</span>
                                            </div>
                                            <div class="del-icon">
                                                <i class="fa fa-times-circle"></i>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="subtotal-text">Sub-total: </div>
                                            <div class="subtotal-price">£48.94</div>
                                        </li>
                                        <li>
                                            <div class="subtotal-text">Eco Tax (-2.00): </div>
                                            <div class="subtotal-price">£1.51</div>
                                        </li>
                                        <li>
                                            <div class="subtotal-text">Vat (20%): </div>
                                            <div class="subtotal-price">£9.79</div>
                                        </li>
                                        <li>
                                            <div class="subtotal-text">Total: </div>
                                            <div class="subtotal-price"><span>£60.24</span></div>
                                        </li>
                                        <li class="mt-30">
                                            <a class="cart-button" href="cart.html">view cart</a>
                                        </li>
                                        <li>
                                            <a class="cart-button" href="checkout.html">checkout</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-top-menu theme-bg sticker">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="top-main-menu">
                            <div class="categories-menu-bar">
                                <div class="categories-menu-btn ha-toggle">
                                    <div class="left">
                                        <i class="lnr lnr-text-align-left"></i>
                                        <span>Browse categories</span>
                                    </div>
                                    <div class="right">
                                        <i class="lnr lnr-chevron-down"></i>
                                    </div>
                                </div>
                                <nav class="categorie-menus ha-dropdown">
                                    <ul id="menu2">
                                        <li><a href="shop-grid-left-sidebar.html">Audio & Home Theater <span class="lnr lnr-chevron-right"></span></a>
                                            <ul class="cat-submenu">
                                                <li><a href="shop-grid-left-sidebar.html">Home Audio <span class="lnr lnr-chevron-right"></span></a>
                                                    <ul class="cat-submenu">
                                                        <li><a href="shop-grid-left-sidebar.html">CD Players & Turntables</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Home Theater Systems</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Receivers & Amplifiers</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Speakers</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Wireless  Audio</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="shop-grid-left-sidebar.html">Blu-ray Disc Players</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">Curved TVs<span class="lnr lnr-chevron-right"></span></a>
                                                    <ul class="cat-submenu">
                                                        <li><a href="shop-grid-left-sidebar.html">CD Players & Turntables</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Home Theater Systems</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Receivers & Amplifiers</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Speakers</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Wireless  Audio</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="shop-grid-left-sidebar.html">Streaming Media Players</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">OLED TVs</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">LED & LCD TVs</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop-grid-left-sidebar.html">Video & Home Theater<span class="lnr lnr-chevron-right"></span></a>
                                            <ul class="cat-submenu category-mega">
                                                <li class="cat-mega-title"><a href="#">Security Cameras</a>
                                                    <ul>
                                                        <li><a href="shop-grid-left-sidebar.html">DSLR Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Lense Camera</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Digital Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Mirrorless Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Point</a></li>
                                                    </ul>
                                                </li>
                                                <li class="cat-mega-title"><a href="#">Mirrorless Cameras</a>
                                                    <ul>
                                                        <li><a href="shop-grid-left-sidebar.html">DSLR Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Lense Camera</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Digital Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Mirrorless Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Point</a></li>
                                                    </ul>
                                                </li>
                                                <li class="cat-mega-title"><a href="#">Digital Cameras</a>
                                                    <ul>
                                                        <li><a href="shop-grid-left-sidebar.html">DSLR Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Lense Camera</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Digital Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Mirrorless Cameras</a></li>
                                                        <li><a href="shop-grid-left-sidebar.html">Point</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="shop-grid-left-sidebar.html">Cellphones & Accessories<span class="lnr lnr-chevron-right"></span></a>
                                            <ul class="cat-submenu">
                                                <li><a href="shop-grid-left-sidebar.html">CD Players & Turntables</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">Home Theater Systems</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">Receivers & Amplifiers</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">Speakers</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">Wireless  Audio</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop-grid-left-sidebar.html">Top Item</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Video Games Consoles</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Business & Office</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Headphones & Accessories</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Quadcopters & Accessories</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Network Devices</a></li>
                                        <li class="category-item-parent hidden"><a href="shop-grid-left-sidebar.html">Smart Watches</a></li>
                                        <li class="category-item-parent"><a class="more-btn" href="#">More Categories</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="main-menu">
                                <nav id="mobile-menu">
                                    <ul>
                                        <li><a href="#">HOME<span class="lnr lnr-chevron-down"></span></a>
                                            <ul class="dropdown">
                                                <li><a href="index.html">Home Version 1</a></li>
                                                <li><a href="index-2.html">Home Version 2</a></li>
                                                <li><a href="index-3.html">Home Version 3</a></li>
                                                <li><a href="index-4.html">Home Version 4</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">SHOP<span class="lnr lnr-chevron-down"></span></a>
                                            <ul class="dropdown">
                                                <li><a href="#">Shop Grid Layout <span class="lnr lnr-chevron-right"></span></a>
                                                    <ul class="dropdown">
                                                        <li><a href="shop-grid-left-sidebar.html">Shop grid left sidebar</a></li>
                                                        <li><a href="shop-grid-right-sidebar.html">Shop grid right sightbar</a></li>
                                                        <li><a href="shop-grid-left-sidebar-4-column.html">shop grid left sidebar 4 col</a></li>
                                                        <li><a href="shop-grid-right-sidebar-4-column.html">shop grid right sidebar 4 col</a></li>
                                                        <li><a href="shop-grid-full-width-3-column.html">shop grid full width 3 col</a></li>
                                                        <li><a href="shop-grid-full-width-4-column.html">shop grid full width 4 col</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Shop List Layout <span class="lnr lnr-chevron-right"></span></a>
                                                    <ul class="dropdown">
                                                        <li><a href="shop-list-left-sidebar.html">Shop lidt left sidebar</a></li>
                                                        <li><a href="shop-list-right-sidebar.html">Shop list right sidebar</a></li>
                                                        <li><a href="shop-list-full-width.html">Shop list full width</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Product Details <span class="lnr lnr-chevron-right"></span></a>
                                                    <ul class="dropdown">
                                                        <li><a href="product-details.html">Product Details</a></li>
                                                        <li><a href="product-details-variable.html">Product Details Variable</a></li>
                                                        <li><a href="product-details-external.html">Product Details External</a></li>
                                                        <li><a href="product-details-group.html">Product Details Group</a></li>
                                                        <li><a href="tab-style-one.html">tab style one</a></li>
                                                        <li><a href="product-details-gallery-left.html">product details gallery left</a></li>
                                                        <li><a href="product-details-gallery-right.html">product details gallery right</a></li>
                                                        <li><a href="sticky-left-sidebar.html">sticky left sidebar</a></li>
                                                        <li><a href="sticky-right-sidebar.html">sticky right sidebar</a></li>
                                                        <li><a href="product-details-slider-box.html">product details slider box</a></li>
                                                        <li><a href="product-details-slider-box.html">product details slider box</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="static"><a href="#">Pages<span class="lnr lnr-chevron-down"></span></a>
                                            <ul class="mega-menu mega-full">
                                                <li class="mega-title"><a href="#">Column one</a>
                                                    <ul>
                                                        <li><a href="shop-grid-left-sidebar.html">Shop grid left sidebar</a></li>
                                                        <li><a href="shop-grid-right-sidebar.html">Shop grid right sightbar</a></li>
                                                        <li><a href="shop-grid-full-width-4-column.html">Shop grid full width</a></li>
                                                        <li><a href="shop-list-full-width.html">Shop list full width</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">Column two</a>
                                                    <ul>
                                                        <li><a href="checkout.html">Check Out</a></li>
                                                        <li><a href="cart.html">Cart</a></li>
                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                        <li><a href="compare.html">Compare</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">Column Three</a>
                                                    <ul>
                                                        <li><a href="product-details.html">Product Details</a></li>
                                                        <li><a href="product-details-variable.html">Product Details Variable</a></li>
                                                        <li><a href="product-details-external.html">Product Details External</a></li>
                                                        <li><a href="product-details-group.html">Product Details Group</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><a href="#">Column Four</a>
                                                    <ul>
                                                        <li><a href="login.html">login</a></li>
                                                        <li><a href="register.html">register</a></li>
                                                        <li><a href="my-account.html">my account</a></li>
                                                        <li><a href="contact-us.html">contact us</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#">BLOG<span class="lnr lnr-chevron-down"></span></a>
                                            <ul class="dropdown">
                                                <li><a href="blog-left-sidebar-3.html">Blog Left Sidebar 3 col</a></li>
                                                <li><a href="blog-left-sidebar-4.html">Blog left Sidebar 4 col</a></li>
                                                <li><a href="blog-right-sidebar-3.html">Blog Right Sidebar 3 col</a></li>
                                                <li><a href="blog-right-sidebar-4.html">Blog Right Sidebar 4 col</a></li>
                                                <li><a href="blog-full-3-column.html">Blog full width 3 col</a></li>
                                                <li><a href="blog-full-4-column.html">Blog full width 4 col</a></li>
                                                <li><a href="blog-full-5-column.html">Blog full width 5 col</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                                <li><a href="blog-details-audio.html">Blog Details audio</a></li>
                                                <li><a href="blog-details-gallery.html">Blog Details gallery</a></li>
                                                <li><a href="blog-details-video.html">Blog Details video</a></li>
                                                <li><a href="blog-details-right-sidebar.html">Blog Details right sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact-us.html">CONTACT US</a></li>
                                    </ul>
                                </nav>
                            </div> <!-- </div> end main menu -->
                            <div class="header-call-action">
                                <p><span class="lnr lnr-phone"></span>Hotline : <strong>1-001-234-5678</strong></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 d-block d-lg-none"><div class="mobile-menu"></div></div>
                </div>
            </div>
        </div>
    </header>
    <!-- header area end -->

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area mb-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Product details</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- product details wrapper start -->
    <div class="product-details-main-wrapper pb-50">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-5">
                    <div class="product-large-slider mb-20">
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-4.jpg" alt="" />
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-4.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-5.jpg" alt=""/>
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-5.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-6.jpg" alt=""/>
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-6.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-7.jpg" alt=""/>
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-7.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-8.jpg" alt=""/>
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-8.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="pro-large-img">
                            <img src="assets/img/product/product-9.jpg" alt=""/>
                            <div class="img-view">
                                <a class="img-popup" href="assets/img/product/product-9.jpg"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="pro-nav">
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-4.jpg" alt="" /></div>
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-5.jpg" alt="" /></div>
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-6.jpg" alt="" /></div>
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-7.jpg" alt="" /></div>
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-8.jpg" alt="" /></div>
                        <div class="pro-nav-thumb"><img src="assets/img/product/product-9.jpg" alt="" /></div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="product-details-inner">
                        <div class="product-details-contentt">
                            <div class="pro-details-name mb-10">
                                <h3>Bose SoundLink Bluetooth Speaker</h3>
                            </div>
                            <div class="pro-details-review mb-20">
                                <ul>
                                    <li>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                        <span><i class="fa fa-star"></i></span>
                                    </li>
                                    <li><a href="#">1 Reviews</a></li>
                                </ul>
                            </div>
                            <div class="price-box mb-15">
                                <span class="regular-price"><span class="special-price">£50.00</span></span>
                                <span class="old-price"><del>£60.00</del></span>
                            </div>
                            <div class="product-detail-sort-des pb-20">
                                <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                            </div>
                            <div class="pro-details-list pt-20">
                                <ul>
                                    <li><span>Ex Tax :</span>£60.24</li>
                                    <li><span>Brands :</span><a href="#">Canon</a></li>
                                    <li><span>Product Code :</span>Digital</li>
                                    <li><span>Reward Points :</span>200</li>
                                    <li><span>Availability :</span>In Stock</li>
                                </ul>
                            </div>
                            <div class="product-availabily-option mt-15 mb-15">
                                <h3>Available Options</h3>
                                <div class="color-optionn">
                                    <h4><sup>*</sup>color</h4>
                                    <ul>
                                        <li>
                                            <a class="c-black" href="#" title="Black"></a>
                                        </li>
                                        <li>
                                            <a class="c-blue" href="#" title="Blue"></a>
                                        </li>
                                        <li>
                                            <a class="c-brown" href="#" title="Brown"></a>
                                        </li>
                                        <li>
                                            <a class="c-gray" href="#" title="Gray"></a>
                                        </li>
                                        <li>
                                            <a class="c-red" href="#" title="Red"></a>
                                        </li>
                                    </ul> 
                                </div>
                            </div>
                            <div class="pro-quantity-box mb-30">
                                <div class="qty-boxx">
                                    <label>qty :</label>
                                    <input type="text" placeholder="0">
                                    <button class="btn-cart lg-btn">add to cart</button>
                                </div>
                            </div>
                            <div class="useful-links mb-20">
                                <ul>
                                    <li>
                                        <a href="#"><i class="fa fa-heart-o"></i>add to wish list</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-refresh"></i>compare this product</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tag-line mb-20">
                                <label>tag :</label>
                                <a href="#">Movado</a>,
                                <a href="#">Omega</a>
                            </div>
                            <div class="pro-social-sharing">
                                <label>share :</label>
                                <ul>
                                    <li class="list-inline-item">
                                        <a href="#" class="bg-facebook" title="Facebook">
                                            <i class="fa fa-facebook"></i>
                                            <span>like 0</span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="bg-twitter" title="Twitter">
                                            <i class="fa fa-twitter"></i>
                                            <span>tweet</span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#" class="bg-google" title="Google Plus">
                                            <i class="fa fa-google-plus"></i>
                                            <span>google +</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- product details wrapper end -->

    <!-- product details reviews start -->
    <div class="product-details-reviews pb-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-info mt-half">
                        <ul class="nav nav-pills justify-content-center" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="nav_desctiption" data-toggle="pill" href="#tab_description" role="tab" aria-controls="tab_description" aria-selected="true">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="nav_review" data-toggle="pill" href="#tab_review" role="tab" aria-controls="tab_review" aria-selected="false">Reviews (1)</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tab_description" role="tabpanel" aria-labelledby="nav_desctiption">
                                <p>Studio Design' PolyFaune collection features classic products with colorful patterns, inspired by the traditional japanese origamis. To wear with a chino or jeans. The sublimation textile printing process provides an exceptional color rendering and a color, guaranteed overtime. Regular fit, round neckline, long sleeves. 100% cotton, brushed inner side for extra comfort.</p>
                            </div>
                            <div class="tab-pane fade" id="tab_review" role="tabpanel" aria-labelledby="nav_review">
                                <div class="product-review">
                                    <div class="customer-review">
                                        <table class="table table-striped table-bordered">
                                            <tbody>
                                                <tr>
                                                    <td><strong>Sinrato Themes</strong></td>
                                                    <td class="text-right">09/04/2019</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <p>It’s both good and bad. If Nikon had achieved a high-quality wide lens camera with a 1 inch sensor, that would have been a very competitive product. So in that sense, it’s good for us. But actually, from the perspective of driving the 1 inch sensor market, we want to stimulate this market and that means multiple manufacturers.</p>
                                                        <div class="product-ratings">
                                                            <ul class="ratting d-flex mt-2">
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                                <li><i class="fa fa-star"></i></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div> <!-- end of customer-review -->
                                    <form action="#" class="review-form">
                                        <h2>Write a review</h2>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="col-form-label"><span class="text-danger">*</span> Your Name</label>
                                                <input type="text" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="col-form-label"><span class="text-danger">*</span> Your Review</label>
                                                <textarea class="form-control" required></textarea>
                                                <div class="help-block pt-10"><span class="text-danger">Note:</span> HTML is not translated!</div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col">
                                                <label class="col-form-label"><span class="text-danger">*</span> Rating</label>
                                                &nbsp;&nbsp;&nbsp; Bad&nbsp;
                                                <input type="radio" value="1" name="rating">
                                                &nbsp;
                                                <input type="radio" value="2" name="rating">
                                                &nbsp;
                                                <input type="radio" value="3" name="rating">
                                                &nbsp;
                                                <input type="radio" value="4" name="rating">
                                                &nbsp;
                                                <input type="radio" value="5" name="rating" checked>
                                                &nbsp;Good
                                            </div>
                                        </div>
                                        <div class="buttons d-flex justify-content-end">
                                            <button class="btn-cart rev-btn" type="submit">Continue</button>
                                        </div>
                                    </form> <!-- end of review-form -->
                                </div> <!-- end of product-review -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    
    <!--  Start related-product -->
    <div class="related-product-area mb-40">
        <div class="container-fluid">
            <div class="section-title">
                <h3><span>Related</span> product </h3>
            </div>
            <div class="flash-sale-active4 owl-carousel owl-arrow-style">
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-1.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-2.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-6.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-8.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-3.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-4.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-10.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-12.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-11.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-14.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
                <div class="product-item mb-30">
                    <div class="product-thumb">
                        <a href="product-details.html">
                            <img src="assets/img/product/product-13.jpg" class="pri-img" alt="">
                            <img src="assets/img/product/product-12.jpg" class="sec-img" alt="">
                        </a>
                        <div class="box-label">
                            <div class="label-product label_new">
                                <span>new</span>
                            </div>
                            <div class="label-product label_sale">
                                <span>-20%</span>
                            </div>
                        </div>
                        <div class="action-links">
                            <a href="#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                            <a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>
                            <a href="#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                    </div>
                    <div class="product-caption">
                        <div class="manufacture-product">
                            <p><a href="shop-grid-left-sidebar.html">apple</a></p>
                        </div>
                        <div class="product-name">
                            <h4><a href="product-details.html">jony XB10 Portable Speaker</a></h4>
                        </div>
                        <div class="ratings">
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                            <span><i class="lnr lnr-star"></i></span>
                        </div>
                        <div class="price-box">
                            <span class="regular-price"><span class="special-price">£65.00</span></span>
                            <span class="old-price"><del>£90.00</del></span>
                        </div>
                        <button class="btn-cart" type="button">add to cart</button>
                    </div>
                </div><!-- </div> end single item -->
            </div>
        </div>
    </div> 
    <!--  end related-product -->

   <!-- scroll to top -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div> <!-- /End Scroll to Top -->

    <!-- footer area start -->  
    <footer>
        <!-- news-letter area start -->
        <div class="newsletter-group">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="newsletter-box">
                            <div class="newsletter-inner">
                                <div class="newsletter-title">
                                    <h3>Sign Up For Newsletters</h3>
                                    <p>Be the First to Know. Sign up for newsletter today</p>
                                </div>
                                <div class="newsletter-box">
                                    <form id="mc-form">
                                        <input type="email" id="mc-email" autocomplete="off" class="email-box" placeholder="enter your email">
                                        <button class="newsletter-btn" type="submit" id="mc-submit">subscribe !</button>
                                    </form>
                                </div>
                            </div>
                            <div class="link-follow">
                                <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                                <a href="https://plus.google.com/discover"><i class="fa fa-google-plus"></i></a>
                                <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                                <a href="https://www.youtube.com/"><i class="fa fa-youtube"></i></a>
                            </div>
                        </div>
                        <!-- mailchimp-alerts Start -->
                        <div class="mailchimp-alerts">
                            <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                            <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                            <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                        </div><!-- mailchimp-alerts end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- news-letter area end -->
        <!-- footer top area start -->
        <div class="footer-top pt-50 pb-50">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer-single-widget">
                            <div class="widget-title">
                                <div class="footer-logo mb-30">
                                    <a href="index.html">
                                         <img src="assets/img/logo/logo-sinrato.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="widget-body">
                                <p>We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.</p>
                                <div class="payment-method">
                                    <h4>payment</h4>
                                    <img src="assets/img/payment/payment.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div> <!-- single widget end -->
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="footer-single-widget">
                            <div class="widget-title">
                                <h4>Information</h4>
                            </div>
                            <div class="widget-body">
                                <div class="footer-useful-link">
                                    <ul>
                                        <li><a href="about.html">about us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Site Map</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> <!-- single widget end -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-single-widget">
                            <div class="widget-title">
                                <h4>contact us</h4>
                            </div>
                            <div class="widget-body">
                                <div class="footer-useful-link">
                                    <ul>
                                        <li><span>Address:</span> 4710-4890 Breckinridge St,Fayetteville, NC 28311</li>
                                        <li><span>email:</span> support@sinrato.com</li>
                                        <li><span>Call us:</span> <strong>1-1001-234-5678</strong></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> <!-- single widget end -->
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer-single-widget">
                            <div class="widget-title">
                                <h4>Our Twitter Feed</h4>
                            </div>
                            <div class="widget-body">
                                <div class="twitter-article">
                                    <div class="twitter-text">
                                        Check out "Alice - Multipurpose Responsive #Magento #Theme" on #Envato by <a href="#">@sinratos</a> #Themeforest <a href="#">https://t.co/DNdhAwzm88</a>
                                        <span class="tweet-time"><i class="fa fa-twitter"></i><a href="#">30 sep</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- single widget end -->
                </div>
            </div>
        </div>
        <!-- footer top area end -->  
        <!-- footer bottom area start -->
        <div class="footer-bottom">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="footer-bottom-content">
                            <div class="footer-copyright">
                            <p>&copy; 2021 <b>Sinrato</b> Made with <i class="fa fa-heart text-danger"></i> by <a href="https://hasthemes.com/"><b>HasThemes</b></a></p>
                            </div>
                            <div class="footer-custom-link">
                                <a href="#">Brands</a>
                                <a href="#">Specials</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer bottom area end -->
    </footer>
    <!-- footer area end -->

    <!-- Quick view modal start -->
    <div class="modal fade" id="quickk_view">
        <div class="container">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-large-slider mb-20">
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-4.jpg" alt=""/>
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-5.jpg" alt=""/>
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-6.jpg" alt=""/>
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-7.jpg" alt=""/>
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-8.jpg" alt=""/>
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-9.jpg" alt=""/>
                                    </div>
                                </div>
                                <div class="pro-nav">
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-4.jpg" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-5.jpg" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-6.jpg" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-7.jpg" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-8.jpg" alt="" /></div>
                                    <div class="pro-nav-thumb"><img src="assets/img/product/product-9.jpg" alt="" /></div>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="product-details-inner">
                                    <div class="product-details-contentt">
                                        <div class="pro-details-name mb-10">
                                            <h3>Bose SoundLink Bluetooth Speaker</h3>
                                        </div>
                                        <div class="pro-details-review mb-20">
                                            <ul>
                                                <li>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                    <span><i class="fa fa-star"></i></span>
                                                </li>
                                                <li><a href="#">1 Reviews</a></li>
                                                <li><a href="#">Write a Review</a></li>
                                            </ul>
                                        </div>
                                        <div class="price-box mb-15">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <div class="product-detail-sort-des pb-20">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned</p>
                                        </div>
                                        <div class="pro-details-list pt-20">
                                            <ul>
                                                <li><span>Availability :</span>In Stock</li>
                                            </ul>
                                        </div>
                                        <div class="product-availabily-option mt-15 mb-15">
                                            <h3>Available Options</h3>
                                            <div class="color-optionn">
                                                <h4><sup>*</sup>color</h4>
                                                <ul>
                                                    <li>
                                                        <a class="c-black" href="#" title="Black"></a>
                                                    </li>
                                                    <li>
                                                        <a class="c-blue" href="#" title="Blue"></a>
                                                    </li>
                                                    <li>
                                                        <a class="c-brown" href="#" title="Brown"></a>
                                                    </li>
                                                    <li>
                                                        <a class="c-gray" href="#" title="Gray"></a>
                                                    </li>
                                                    <li>
                                                        <a class="c-red" href="#" title="Red"></a>
                                                    </li>
                                                </ul> 
                                            </div>
                                        </div>
                                        <div class="pro-quantity-box mb-30">
                                            <div class="qty-boxx">
                                                <label>qty :</label>
                                                <input type="text" placeholder="0">
                                                <button class="btn-cart lg-btn">add to cart</button>
                                            </div>
                                        </div>
                                        <div class="pro-social-sharing">
                                            <label>share :</label>
                                            <ul>
                                                <li class="list-inline-item">
                                                    <a href="#" class="bg-facebook" title="Facebook">
                                                        <i class="fa fa-facebook"></i>
                                                        <span>like 0</span>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="#" class="bg-twitter" title="Twitter">
                                                        <i class="fa fa-twitter"></i>
                                                        <span>tweet</span>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item">
                                                    <a href="#" class="bg-google" title="Google Plus">
                                                        <i class="fa fa-google-plus"></i>
                                                        <span>google +</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->



	<!-- all js include here -->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/ajax-mail.js"></script>
    <script src="assets/js/main.js"></script>
</body>
