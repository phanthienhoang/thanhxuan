<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="{{route('page.index')}}"><img src="{{ asset('thanhxuan/assets/images/black-logo.png') }}" alt="" /></a>
    </div>
    <div class="humberger__menu__cart">
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
    <div class="humberger__menu__widget">
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
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li><a href="{{route('page.index')}}">TRANG CHỦ</a></li>
            <li class="active"><a href="{{route('page.product')}}">SẢN PHẨM</a></li>
            <li><a href="{{route('page.introduction')}}">GIỚI THIỆU</a></li>
            <li><a href="{{route('page.contact')}}">LIÊN HỆ</a></li>
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
            <li>
                <i class="fa fa-envelope"></i>
                <a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                    data-cfemail="a8c0cdc4c4c7e8cbc7c4c7dac4c1ca86cbc7c5">[email&#160;protected]</a>
            </li>
            <li>
                <span><i class="fa fa-truck"></i></span>Miễn phí vận chuyển
            </li>
        </ul>
    </div>
</div>
