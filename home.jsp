<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>
<layout:extends name="base2">
<layout:put block="style" type="REPLACE">
    <!-- Default CSS -->
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/demo2.min.css">
</layout:put>
<layout:put block="contents">
    <main class="main">
<%--        <div class="intro-section">--%>
<%--            <div class="swiper-container swiper-theme nav-inner pg-inner animation-slider pg-xxl-hide pg-show nav-xxl-show nav-hide"--%>
<%--                 data-swiper-options="{--%>
<%--                    'slidesPerView': 1,--%>
<%--                    'autoplay': {--%>
<%--                        'delay': 4000,--%>
<%--                        'disableOnInteraction': false--%>
<%--                    }--%>
<%--                }">--%>
<%--                <div class="swiper-wrapper row gutter-no cols-1">--%>
<%--                    <div class="swiper-slide banner banner-fixed intro-slide intro-slide1"--%>
<%--                         style="background-image: url(assets/images/demos/demo2/slides/slide-1.jpg); background-color: #f1f0f0;">--%>
<%--                        <div class="container">--%>
<%--                            <figure class="slide-image floating-item slide-animate" data-animation-options="{--%>
<%--                                    'name': 'fadeInDownShorter', 'duration': '1s'--%>
<%--                                }" data-options="{'relativeInput':true,'clipRelativeInput':true,'invertX':true,'invertY':true}"--%>
<%--                                    data-child-depth="0.2">--%>
<%--                                <img src="assets/images/demos/demo2/slides/ski.png" alt="Ski" width="729"--%>
<%--                                     height="570" />--%>
<%--                            </figure>--%>
<%--                            <div class="banner-content text-right y-50 ml-auto">--%>
<%--                                <h5 class="banner-subtitle text-uppercase font-weight-bold mb-2 slide-animate"--%>
<%--                                    data-animation-options="{--%>
<%--                                        'name': 'fadeInUpShorter', 'duration': '1s'--%>
<%--                                    }">Deals And Promotions</h5>--%>
<%--                                <h3 class="banner-title ls-25 mb-6 slide-animate" data-animation-options="{--%>
<%--                                        'name': 'fadeInUpShorter', 'duration': '1s'--%>
<%--                                    }">Fashion <span class="text-primary">Skiwears</span> for the ardent Sports--%>
<%--                                    devotees--%>
<%--                                </h3>--%>
<%--                                <a href="shop-banner-sidebar.html"--%>
<%--                                   class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"--%>
<%--                                   data-animation-options="{--%>
<%--                                        'name': 'fadeInUpShorter', 'duration': '1s'--%>
<%--                                    }">--%>
<%--                                    Shop Now<i class="w-icon-long-arrow-right"></i></a>--%>
<%--                            </div>--%>
<%--                            <!-- End of .banner-content -->--%>
<%--                        </div>--%>
<%--                        <!-- End of .container -->--%>
<%--                    </div>--%>
<%--                    <!-- End of .intro-slide1 -->--%>

<%--                    <div class="swiper-slide banner banner-fixed intro-slide intro-slide2"--%>
<%--                         style="background-image: url(assets/images/demos/demo2/slides/slide-2.jpg); background-color: #d9ddd9;">--%>
<%--                        <div class="container">--%>
<%--                            <figure class="slide-image floating-item slide-animate" data-animation-options="{--%>
<%--                                    'name': 'fadeInUpShorter', 'duration': '1s'--%>
<%--                                }" data-options="{'relativeInput':true,'clipRelativeInput':true,'invertX':true,'invertY':true}"--%>
<%--                                    data-child-depth="0.2">--%>
<%--                                <img src="assets/images/demos/demo2/slides/woman.png" alt="Ski" width="865"--%>
<%--                                     height="732" />--%>
<%--                            </figure>--%>
<%--                            <div class="banner-content y-50">--%>
<%--                                <h5 class="banner-subtitle text-uppercase font-weight-bold mb-2 slide-animate"--%>
<%--                                    data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s', 'delay': '.5s'--%>
<%--                                    }">News And Inspiration</h5>--%>
<%--                                <h3 class="banner-title ls-25 mb-2 text-uppercase lh-1 slide-animate"--%>
<%--                                    data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s', 'delay': '.7s'--%>
<%--                                    }">Natural Sound</h3>--%>
<%--                                <div class="banner-price-info font-weight-bold text-dark ls-25 slide-animate"--%>
<%--                                     data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s', 'delay': '.9s'--%>
<%--                                    }">Sale up to--%>
<%--                                    <span class="text-primary font-weight-bolder text-uppercase ls-normal">30%--%>
<%--                                            Off</span></div>--%>
<%--                                <p class="font-weight-normal text-default ls-25 slide-animate"--%>
<%--                                   data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s', 'delay': '1.1s'--%>
<%--                                    }">Free returns extended to 30 days after delivery</p>--%>
<%--                                <a href="shop-banner-sidebar.html"--%>
<%--                                   class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"--%>
<%--                                   data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s', 'delay': '1.3s'--%>
<%--                                    }">--%>
<%--                                    Shop Now<i class="w-icon-long-arrow-right"></i></a>--%>
<%--                            </div>--%>
<%--                            <!-- End of .banner-content -->--%>
<%--                        </div>--%>
<%--                        <!-- End of .container -->--%>
<%--                    </div>--%>
<%--                    <!-- End of .intro-slide2 -->--%>

<%--                    <div class="swiper-slide banner banner-fixed intro-slide intro-slide3"--%>
<%--                         style="background-image: url(assets/images/demos/demo2/slides/slide-3.jpg); background-color: #d0cfcb;">--%>
<%--                        <div class="container">--%>
<%--                            <figure class="slide-image floating-item slide-animate" data-animation-options="{--%>
<%--                                    'name': 'fadeInRightShorter', 'duration': '1s'--%>
<%--                                }" data-options="{'relativeInput':true,'clipRelativeInput':true,'invertX':true,'invertY':true}"--%>
<%--                                    data-child-depth="0.2">--%>
<%--                                <img src="assets/images/demos/demo2/slides/man.png" alt="Ski" width="527"--%>
<%--                                     height="481" />--%>
<%--                            </figure>--%>
<%--                            <div class="banner-content y-50">--%>
<%--                                <h5 class="banner-subtitle text-uppercase font-weight-bold slide-animate"--%>
<%--                                    data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s'--%>
<%--                                    }">Top Monthly Seller</h5>--%>
<%--                                <h4 class="banner-title ls-25 slide-animate" data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s'--%>
<%--                                    }">Sumsung 52 Inches Full HD <span class="text-primary">Smart LED</span> TV</h4>--%>
<%--                                <p class="font-weight-normal text-dark slide-animate" data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s'--%>
<%--                                    }">Only until the end of this week.</p>--%>
<%--                                <a href="shop-banner-sidebar.html"--%>
<%--                                   class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate"--%>
<%--                                   data-animation-options="{--%>
<%--                                        'name': 'fadeInRightShorter', 'duration': '1s'--%>
<%--                                    }">Shop Now<i class="w-icon-long-arrow-right"></i></a>--%>
<%--                            </div>--%>
<%--                            <!-- End of .banner-content -->--%>
<%--                        </div>--%>
<%--                        <!-- End of .container -->--%>
<%--                    </div>--%>
<%--                    <!-- End of .intro-slide3 -->--%>
<%--                </div>--%>
<%--                <div class="swiper-pagination"></div>--%>
<%--                <button class="swiper-button-next"></button>--%>
<%--                <button class="swiper-button-prev"></button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- End of .intro-section -->--%>

<%--        <div class="container">--%>
<%--            <!-- End of Iocn Box Wrapper -->--%>
<%--<br><br>--%>
<%--            <div class="title-link-wrapper mb-3 appear-animate">--%>
<%--                <h2 class="title title-deals mb-1">Deals Of The Day</h2>--%>
<%--                <div class="product-countdown-container font-size-sm text-dark align-items-center">--%>
<%--                    <label>Offer Ends in: </label>--%>
<%--                    <div class="product-countdown countdown-compact ml-1 font-weight-bold" data-until="+10d"--%>
<%--                         data-relative="true" data-compact="true">10days,00:00:00</div>--%>
<%--                </div>--%>
<%--                <a href="shop-boxed-banner.html" class="font-weight-bold ls-25">More Products<i--%>
<%--                        class="w-icon-long-arrow-right"></i></a>--%>
<%--            </div>--%>
<%--            <!-- End of .title-link-wrapper -->--%>

<%--            <div class="swiper-container swiper-theme product-deals-wrapper appear-animate mb-7"--%>
<%--                 data-swiper-options="{--%>
<%--                    'spaceBetween': 20,--%>
<%--                    'slidesPerView': 2,--%>
<%--                    'breakpoints': {--%>
<%--                        '576': {--%>
<%--                            'slidesPerView': 3--%>
<%--                        },--%>
<%--                        '768': {--%>
<%--                            'slidesPerView': 4--%>
<%--                        },--%>
<%--                        '992': {--%>
<%--                            'slidesPerView': 5--%>
<%--                        }--%>
<%--                    }--%>
<%--                }">--%>
<%--                <div class="swiper-wrapper row cols-lg-5 cols-md-4 cols-2">--%>

<%--&lt;%&ndash;                    <div class="swiper-slide product-wrap">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div class="product text-center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <figure class="product-media">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a href="product-default.html">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <img src="assets/images/demos/demo2/products/1-1-1.jpg" alt="Product"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                         width="300" height="338">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <img src="assets/images/demos/demo2/products/1-1-2.jpg" alt="Product"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                         width="300" height="338">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="product-action-vertical">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                       title="Add to cart"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                       title="Add to wishlist"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                       title="Quickview"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                       title="Add to Compare"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="product-label-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <label class="product-label label-new">New</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </figure>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="product-details">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <h4 class="product-name"><a href="product-default.html">Women's Comforter</a></h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="ratings-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="ratings-full">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <span class="ratings" style="width: 100%;"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <span class="tooltiptext tooltip-top"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="product-price">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <ins class="new-price">$45.62 - $58.28</ins>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-2.jpg" alt="Product" width="300"--%>
<%--                                         height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                                <div class="product-label-group">--%>
<%--                                    <label class="product-label label-new">New</label>--%>
<%--                                    <label class="product-label label-discount">-35%</label>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">White Valise</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$40.00</ins><span class="old-price">$49.89</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-3-1.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-3-2.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Brown Leather Shoes</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 80%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(6 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$36.26 - $59.75</ins>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-4.jpg" alt="Product" width="300"--%>
<%--                                         height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                                <div class="product-label-group">--%>
<%--                                    <label class="product-label label-new">New</label>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Portable Flashlight</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(8 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$10.00</ins><del class="old-price">$11.00</del>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-5.jpg" alt="Product" width="300"--%>
<%--                                         height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">USB Charger</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$17.00</ins><del class="old-price">$20.00</del>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="swiper-pagination"></div>--%>
<%--            </div>--%>
<%--            <!-- End of Product Deals Warpper -->--%>

<%--            <div class="row category-wrapper electronics-cosmetics appear-animate mb-7">--%>
<%--                <div class="col-md-6 mb-4">--%>
<%--                    <div class="banner banner-fixed br-sm">--%>
<%--                        <figure>--%>
<%--                            <img src="assets/images/demos/demo2/categories/1-1.jpg" alt="Category Banner"--%>
<%--                                 width="640" height="200" style="background-color: #25282D;" />--%>
<%--                        </figure>--%>
<%--                        <div class="banner-content y-50">--%>
<%--                            <h3 class="banner-title text-white ls-25 mb-0">Electronics</h3>--%>
<%--                            <div class="banner-price-info text-white font-weight-bold text-uppercase mb-1">Starting--%>
<%--                                At--%>
<%--                                <strong class="text-secondary">$125.00</strong>--%>
<%--                            </div>--%>
<%--                            <hr class="banner-divider bg-white" />--%>
<%--                            <a href="shop-banner-sidebar.html"--%>
<%--                               class="btn btn-white btn-link btn-underline btn-icon-right">--%>
<%--                                Shop Now<i class="w-icon-long-arrow-right"></i></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-6 mb-4">--%>
<%--                    <div class="banner banner-fixed br-sm">--%>
<%--                        <figure>--%>
<%--                            <img src="assets/images/demos/demo2/categories/1-2.jpg" alt="Category Banner"--%>
<%--                                 width="640" height="200" style="background-color: #eeedec;" />--%>
<%--                        </figure>--%>
<%--                        <div class="banner-content y-50">--%>
<%--                            <h3 class="banner-title ls-25 text-capitalize mb-0">Cosmetics Sets</h3>--%>
<%--                            <div class="banner-price-info font-weight-bold text-uppercase mb-1">Sale Up To--%>
<%--                                <strong class="text-secondary">30% Off</strong>--%>
<%--                            </div>--%>
<%--                            <hr class="banner-divider bg-dark" />--%>
<%--                            <a href="shop-banner-sidebar.html"--%>
<%--                               class="btn btn-dark btn-link btn-underline btn-icon-right">--%>
<%--                                Shop Now<i class="w-icon-long-arrow-right"></i></a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End of Category Wrapper -->--%>

<%--            <h2 class="title mb-5 appear-animate">Top Weekly Vendors</h2>--%>
<%--            <div class="swiper-container swiper-theme vendor-wrapper mb-4 appear-animate" data-swiper-options="{--%>
<%--                    'spaceBetween': 20,--%>
<%--                    'slidesPerView': 1,--%>
<%--                    'breakpoints': {--%>
<%--                        '576': {--%>
<%--                            'slidesPerView': 2--%>
<%--                        },--%>
<%--                        '768': {--%>
<%--                            'slidesPerView': 3--%>
<%--                        },--%>
<%--                        '1200': {--%>
<%--                            'slidesPerView': 4--%>
<%--                        }--%>
<%--                    }--%>
<%--                }">--%>
<%--                <div class="swiper-wrapper row cols-lg-4 cols-md-3 cols-sm-2 cols-1">--%>
<%--                    <div class="swiper-slide vendor-widget vendor-widget-1">--%>
<%--                        <div class="vendor-products grid-type">--%>
<%--                            <div class="vendor-product lg-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-1.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-2.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-3.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="vendor-details">--%>
<%--                            <figure class="vendor-logo">--%>
<%--                                <a href="vendor-dokan-store.html">--%>
<%--                                    <img src="assets/images/demos/demo2/vendor-logo/1.jpg" alt="Vendor Logo"--%>
<%--                                         width="70" height="70">--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <div class="vendor-personal">--%>
<%--                                <h4 class="vendor-name">--%>
<%--                                    <a href="vendor-dokan-store.html">Vendor 1</a>--%>
<%--                                </h4>--%>
<%--                                <span class="vendor-product-count">(27 Products)</span>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Vendor Widget -->--%>
<%--                    <div class="swiper-slide vendor-widget vendor-widget-1">--%>
<%--                        <div class="vendor-products grid-type">--%>
<%--                            <div class="vendor-product lg-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-4.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-5.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-6.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="vendor-details">--%>
<%--                            <figure class="vendor-logo">--%>
<%--                                <a href="vendor-dokan-store.html">--%>
<%--                                    <img src="assets/images/demos/demo2/vendor-logo/2.jpg" alt="Vendor Logo"--%>
<%--                                         width="70" height="70">--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <div class="vendor-personal">--%>
<%--                                <h4 class="vendor-name">--%>
<%--                                    <a href="vendor-dokan-store.html">Vendor 2</a>--%>
<%--                                </h4>--%>
<%--                                <span class="vendor-product-count">(20 Products)</span>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Vendor Widget -->--%>
<%--                    <div class="swiper-slide vendor-widget vendor-widget-1">--%>
<%--                        <div class="vendor-products grid-type">--%>
<%--                            <div class="vendor-product lg-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-7.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-8.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-9.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="vendor-details">--%>
<%--                            <figure class="vendor-logo">--%>
<%--                                <a href="vendor-dokan-store.html">--%>
<%--                                    <img src="assets/images/demos/demo2/vendor-logo/3.jpg" alt="Vendor Logo"--%>
<%--                                         width="70" height="70">--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <div class="vendor-personal">--%>
<%--                                <h4 class="vendor-name">--%>
<%--                                    <a href="vendor-dokan-store.html">Vendor 3</a>--%>
<%--                                </h4>--%>
<%--                                <span class="vendor-product-count">(16 Products)</span>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Vendor Widget -->--%>
<%--                    <div class="swiper-slide vendor-widget vendor-widget-1">--%>
<%--                        <div class="vendor-products grid-type">--%>
<%--                            <div class="vendor-product lg-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-10.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-11.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                            <div class="vendor-product sm-item">--%>
<%--                                <figure class="product-media">--%>
<%--                                    <a href="product-default.html">--%>
<%--                                        <img src="assets/images/demos/demo2/products/2-12.jpg" alt="Vendor Product"--%>
<%--                                             width="300" height="338">--%>
<%--                                    </a>--%>
<%--                                </figure>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="vendor-details">--%>
<%--                            <figure class="vendor-logo">--%>
<%--                                <a href="vendor-dokan-store.html">--%>
<%--                                    <img src="assets/images/demos/demo2/vendor-logo/4.jpg" alt="Vendor Logo"--%>
<%--                                         width="70" height="70">--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <div class="vendor-personal">--%>
<%--                                <h4 class="vendor-name">--%>
<%--                                    <a href="vendor-dokan-store.html">Vendor 4</a>--%>
<%--                                </h4>--%>
<%--                                <span class="vendor-product-count">(23 Products)</span>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Vendor Widget -->--%>
<%--                </div>--%>
<%--                <div class="swiper-pagination"></div>--%>
<%--            </div>--%>
<%--            <!-- End of Vendor Wrapper -->--%>

<%--            <div class="row category-wrapper sports-fashion mb-8 appear-animate">--%>
<%--                <div class="col-md-6 mb-4">--%>
<%--                    <div class="banner banner-fixed br-sm">--%>
<%--                        <figure>--%>
<%--                            <img src="assets/images/demos/demo2/categories/2-1.jpg" alt="Category Banner"--%>
<%--                                 width="640" height="200" style="background-color: #EAEAEA;" />--%>
<%--                        </figure>--%>
<%--                        <div class="banner-content y-50 text-right">--%>
<%--                            <h5 class="banner-subtitle text-uppercase font-weight-bold">New Arrivals</h5>--%>
<%--                            <h3 class="banner-title text-capitalize ls-25">Sport Outfits</h3>--%>
<%--                            <hr class="banner-divider bg-dark ml-auto mb-3">--%>
<%--                            <div class="banner-price-info text-dark">--%>
<%--                                From <span class="text-secondary font-weight-bolder ls-25">$150.00</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-6 mb-4">--%>
<%--                    <div class="banner banner-fixed br-sm">--%>
<%--                        <figure>--%>
<%--                            <img src="assets/images/demos/demo2/categories/2-2.jpg" alt="Category Banner"--%>
<%--                                 width="640" height="200" style="background-color: #181411;" />--%>
<%--                        </figure>--%>
<%--                        <div class="banner-content y-50">--%>
<%--                            <h5 class="banner-subtitle text-uppercase font-weight-normal text-white">SmartWatches--%>
<%--                            </h5>--%>
<%--                            <h3 class="banner-title text-white ls-25">Sale up to 20% Off</h3>--%>
<%--                            <hr class="banner-divider bg-white">--%>
<%--                            <div class="banner-price-info text-white">--%>
<%--                                Starting at <span class="text-secondary font-weight-bolder ls-25">$270.00</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End of Category Wrapper -->--%>

<%--            <div class="banner br-sm banner-electronics appear-animate" style="background-image: url(assets/images/demos/demo2/banners/3.jpg);--%>
<%--                    background-color: #333;">--%>
<%--                <div class="banner-content mr-10 pr-1">--%>
<%--                    <div class="banner-price-info text-white font-weight-normal ls-25">--%>
<%--                        Save Big on <span class="font-weight-bolder text-secondary text-uppercase">50% Off</span>--%>
<%--                    </div>--%>
<%--                    <h3 class="banner-title text-white mb-0 ls-25">Cameras and Leans Sale</h3>--%>
<%--                </div>--%>
<%--                <a href="shop-banner-sidebar.html" class="btn btn-white btn-rounded btn-icon-right mt-1">Shop Now<i--%>
<%--                        class="w-icon-long-arrow-right"></i></a>--%>
<%--            </div>--%>
<%--            <!-- End of Banner -->--%>

<%--            <div class="title-link-wrapper mb-2 appear-animate">--%>
<%--                <h2 class="title">Top Rated Products</h2>--%>
<%--                <a href="shop-boxed-banner.html" class="font-weight-bold ls-25">More Products<i--%>
<%--                        class="w-icon-long-arrow-right"></i></a>--%>
<%--            </div>--%>

<%--            <div class="swiper-container swiper-theme top-products mb-6 appear-animate" data-swiper-options="{--%>
<%--                    'spaceBetween': 20,--%>
<%--                    'slidesPerView': 2,--%>
<%--                    'breakpoints': {--%>
<%--                        '576': {--%>
<%--                            'slidesPerView': 3--%>
<%--                        },--%>
<%--                        '768': {--%>
<%--                            'slidesPerView': 4--%>
<%--                        },--%>
<%--                        '992': {--%>
<%--                            'slidesPerView': 5--%>
<%--                        }--%>
<%--                    }--%>
<%--                }">--%>
<%--                <div class="swiper-wrapper row cols-lg-5 cols-md-4 cols-sm-3 cols-2">--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-1-1.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-1-2.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-label-group">--%>
<%--                                    <label class="product-label label-discount">-15%</label>--%>
<%--                                </div>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                                <div class="product-countdown-container">--%>
<%--                                    <div class="product-countdown countdown-compact" data-until="2021, 9, 9"--%>
<%--                                         data-format="DHMS" data-compact="false"--%>
<%--                                         data-labels-short="Days, Hours, Mins, Secs">--%>
<%--                                        00:00:00:00</div>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">White Schoolbag</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$56.48</ins>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-1-1.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-1-2.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                                <div class="product-label-group">--%>
<%--                                    <label class="product-label label-new">New</label>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Women's Comforter</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$45.62 - $58.28</ins>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-2-1.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-2-2.jpg" alt="Product"--%>
<%--                                         width="300" height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Gold Watch</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 80%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(3 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$164.47</ins><del class="old-price">$183.47</del>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/1-4.jpg" alt="Product" width="300"--%>
<%--                                         height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                                <div class="product-label-group">--%>
<%--                                    <label class="product-label label-new">New</label>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Portable Flashlight</a></h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(8 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$10.00</ins><del class="old-price">$11.00</del>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/6-1.jpg" alt="Product" width="300"--%>
<%--                                         height="338">--%>
<%--                                </a>--%>
<%--                                <div class="product-action-vertical">--%>
<%--                                    <a href="#" class="btn-product-icon btn-cart w-icon-cart"--%>
<%--                                       title="Add to cart"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-wishlist w-icon-heart"--%>
<%--                                       title="Add to wishlist"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search"--%>
<%--                                       title="Quickview"></a>--%>
<%--                                    <a href="#" class="btn-product-icon btn-compare w-icon-compare"--%>
<%--                                       title="Add to Compare"></a>--%>
<%--                                </div>--%>
<%--                            </figure>--%>
<%--                            <div class="product-details">--%>
<%--                                <h4 class="product-name"><a href="product-default.html">Fashionable Original--%>
<%--                                    Coat</a>--%>
<%--                                </h4>--%>
<%--                                <div class="ratings-container">--%>
<%--                                    <div class="ratings-full">--%>
<%--                                        <span class="ratings" style="width: 100%;"></span>--%>
<%--                                        <span class="tooltiptext tooltip-top"></span>--%>
<%--                                    </div>--%>
<%--                                    <a href="product-default.html" class="rating-reviews">(8 Reviews)</a>--%>
<%--                                </div>--%>
<%--                                <div class="product-price">--%>
<%--                                    <ins class="new-price">$54.00 - $59.88</ins>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="swiper-pagination"></div>--%>
<%--            </div>--%>
<%--            <!-- End of Swiper Container -->--%>

<%--            <h2 class="title text-left text-capitalize mb-5 appear-animate">Your Recent Views</h2>--%>
<%--            <div class="swiper-container swiper-theme appear-animate viewed-products mb-7" data-swiper-options="{--%>
<%--                    'spaceBetween': 20,--%>
<%--                    'slidesPerView': 2,--%>
<%--                    'breakpoints': {--%>
<%--                        '576': {--%>
<%--                            'slidesPerView': 3--%>
<%--                        },--%>
<%--                        '768': {--%>
<%--                            'slidesPerView': 5--%>
<%--                        },--%>
<%--                        '992': {--%>
<%--                            'slidesPerView': 6--%>
<%--                        },--%>
<%--                        '1200': {--%>
<%--                            'slidesPerView': 8--%>
<%--                        }--%>
<%--                    }--%>
<%--                }">--%>
<%--                <div class="swiper-wrapper row cols-xl-8 cols-lg-6 cols-md-4 cols-2">--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-5-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Charge &amp; Alarm Machine</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-2-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Women's Comforter</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-2-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Gold Watch</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-6-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Mini Wireless Earphone</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-1-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">White Schoolbag</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/3-7-1.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">High Quality Screen Tablet</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-4.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Beyond OTP Shirt</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                    <div class="swiper-slide product-wrap">--%>
<%--                        <div class="product text-center product-absolute">--%>
<%--                            <figure class="product-media">--%>
<%--                                <a href="product-defaproduct-default.html">--%>
<%--                                    <img src="assets/images/demos/demo2/products/4-3.jpg" alt="Category image"--%>
<%--                                         width="300" height="338" style="background-color: #fff" />--%>
<%--                                </a>--%>
<%--                            </figure>--%>
<%--                            <h4 class="product-name">--%>
<%--                                <a href="product-default.html">Blue Training Shoes</a>--%>
<%--                            </h4>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End of Product Wrap -->--%>
<%--                </div>--%>
<%--                <div class="swiper-pagination"></div>--%>
<%--            </div>--%>
<%--            <!-- End of Swiper Container -->--%>
<%--        </div>--%>



    <div class="hero-slider">
        <div class="slider-item th-fullpage hero-area" style="background-image: url('assets/images/slider/slider-1.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-center">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">PRODUCTS</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">The beauty of nature <br> is hidden in details.</h1>
                        <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider-item th-fullpage hero-area" style="background-image: url('assets/images/slider/slider-2.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-left">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">PRODUCTS</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">The beauty of nature <br> is hidden in details.</h1>
                        <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider-item th-fullpage hero-area" style="background-image: url('assets/images/slider/slider-3.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 text-right">
                        <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">PRODUCTS</p>
                        <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">The beauty of nature <br> is hidden in details.</h1>
                        <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="product-category section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title text-center">
                        <h2>Product Category</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="category-box">
                        <a href="#!">
                            <img src="assets/images/categories/category-1.jpg" alt="" />
                            <div class="content">
                                <h3>Clothes Sales</h3>
                                <p>Shop New Season Clothing</p>
                            </div>
                        </a>
                    </div>
                    <div class="category-box">
                        <a href="#!">
                            <img src="assets/images/categories/category-2.jpg" alt="" />
                            <div class="content">
                                <h3>Smart Casuals</h3>
                                <p>Get Wide Range Selection</p>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="category-box category-box-2">
                        <a href="#!">
                            <img src="assets/images/categories/category-3.jpg" alt="" />
                            <div class="content">
                                <h3>Jewellery</h3>
                                <p>Special Design Comes First</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="products section bg-gray">
        <div class="container">
            <div class="row">
                <div class="title text-center">
                    <h2>Trendy Products</h2>
                </div>
            </div>
            <div class="row">

                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <span class="bage">Sale</span>
                            <img class="img-responsive" src="assets/images/shop/products/product-1.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#!" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Reef Boardsport</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-2.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-3.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Strayhorn SP</a></h4>
                            <p class="price">$230</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-4.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Bradley Mid</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-5.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-6.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <span class="bage">Sale</span>
                            <img class="img-responsive" src="assets/images/shop/products/product-7.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-8.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img class="img-responsive" src="assets/images/shop/products/product-9.jpg" alt="product-img" />
                            <div class="preview-meta">
                                <ul>
                                    <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                                    </li>
                                    <li>
                                        <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
                            <p class="price">$200</p>
                        </div>
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal product-modal fade" id="product-modal">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="tf-ion-close"></i>
                    </button>
                    <div class="modal-dialog " role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-8 col-sm-6 col-xs-12">
                                        <div class="modal-image">
                                            <img class="img-responsive" src="assets/images/shop/products/modal-product.jpg" alt="product-img" />
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12">
                                        <div class="product-short-details">
                                            <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                                            <p class="product-price">$200</p>
                                            <p class="product-short-description">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
                                            </p>
                                            <a href="cart.html" class="btn btn-main">Add To Cart</a>
                                            <a href="product-single.html" class="btn btn-transparent">View Product Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.modal -->

            </div>
        </div>
    </section>


    <!--
    Start Call To Action
    ==================================== -->
    <section class="call-to-action bg-gray section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="title">
                        <h2>SUBSCRIBE TO NEWSLETTER</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, <br> facilis numquam impedit ut sequi. Minus facilis vitae excepturi sit laboriosam.</p>
                    </div>
                    <div class="col-lg-6 col-md-offset-3">
                        <div class="input-group subscription-form">
                            <input type="text" class="form-control" placeholder="Enter Your Email Address">
                            <span class="input-group-btn">
				        <button class="btn btn-main" type="button">Subscribe Now!</button>
				      </span>
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->

                </div>
            </div> 		<!-- End row -->
        </div>   	<!-- End container -->
    </section>   <!-- End section -->

    <section class="section instagram-feed">
        <div class="container">
            <div class="row">
                <div class="title">
                    <h2>View us on instagram</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="instagram-slider" id="instafeed" data-accessToken="IGQVJYeUk4YWNIY1h4OWZANeS1wRHZARdjJ5QmdueXN2RFR6NF9iYUtfcGp1NmpxZA3RTbnU1MXpDNVBHTzZAMOFlxcGlkVHBKdjhqSnUybERhNWdQSE5hVmtXT013MEhOQVJJRGJBRURn"></div>
                </div>
            </div>
        </div>
    </section>
        <!-- End of Container -->
    </main>
    <!-- End of Main -->
</layout:put>
</layout:extends>