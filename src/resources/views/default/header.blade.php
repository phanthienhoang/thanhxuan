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
                        <!-- <div class="header__top__right__auth">
                            <a href="#"><i class="fa fa-user"></i> Login</a>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="{{route('page.index')}}"><img src="{{ asset('thanhxuan/assets/images/black-logo.png') }}" alt="" /></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="{{route('page.index')}}">TRANG CHỦ</a></li>
                        <li class="active"><a href="{{route('page.product')}}">SẢN PHẨM</a></li>
                        <li><a href="{{route('page.introduction')}}">GIỚI THIỆU</a></li>
                        <li><a href="{{route('page.contact')}}">LIÊN HỆ</a></li>
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