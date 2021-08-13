<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li>
                                <i class="fa fa-envelope"></i>
                                <label href="#" class="__cf_email__"
                                    data-cfemail="a0c8c5cccccfe0c3cfcccfd2ccc9c28ec3cfcd">{{ setting('site.site_mail') }}</label>
                            </li>
                            <li>
                                <span><i class="fa fa-truck"></i></span>Miễn phí vận chuyển
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__language">
                            <img src="{{ URL::asset('images/Flag-Vietnam.jpg') }}" alt="" />
                            <div>Vietnamese</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="#">English</a></li>
                                <li><a href="#">Vietnamese</a></li>
                            </ul>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="#"><i class="fa fa-user"></i> Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="/"><img src="{{ URL::asset('images/logo.png') }}" alt="" /></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="/">Home</a></li>
                        <li><a href="/shop">Shop</a></li>
                        <li>
                            <a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="/product">Product Details</a></li>
                                <li><a href="/shopping-cart">Shoping Cart</a></li>
                                <li><a href="./checkout.html">Check Out</a></li>
                                <li><a href="./blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li>
                            <a href="#"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a>
                        </li>
                    </ul>
                    <div class="header__cart__price">item: <span>$150.00</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
