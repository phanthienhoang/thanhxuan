<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>ĐÁ QUÝ THANH XUÂN - THỜI TRANG NAM NỮ THỊNH HÀNH 2021</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ asset('thanhxuan/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="{{ asset('thanhxuan/assets/css/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ asset('thanhxuan/assets/css/templatemo-plot-listing.css') }}">
    <link rel="stylesheet" href="{{ asset('thanhxuan/assets/css/animated.css') }}">
    <link rel="stylesheet" href="{{ asset('thanhxuan/assets/css/owl.css') }}">
  
</head>

<body>
 <!-- ***** Preloader Start ***** -->
 <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="{{route('page.index')}}" class="logo">
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li><a href="{{route('page.index')}}">TRANG CHỦ</a></li>
              <li><a href="listing.html">SẢN PHẨM</a></li>
              <li><a href="{{route('page.introduction')}}">Giới Thiệu</a></li>
              <li><a href="{{route('page.contact')}}">Liên Hệ</a></li>
              <li><div class="main-white-button"><a href="#"><i class="fa fa-plus"></i> Giỏ Hàng</a></div></li> 
            </ul>
            <a class='menu-trigger'>
                <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
    @yield('content')


  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="about">
              <h4>THANH XUÂN</h4>
            <p>Trang sức đá phong thủy Thanh Xuân. Cửa hàng phong thủy Uy tín. Phong cách độc đáo, trẻ trung. Free ship, Cod. Bảo hành. Giá tốt. Loại: Ruby sapphire hổ phách, Cẩm thạch ngọc bích topaz, Ngọc trai thạch anh tóc, Đá mặt trăng diopsite..vv.</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="contact-us">
            <h4>HỖ TRỢ</h4>
            <div class="row">
              <div class="col-lg-6">
                  <a href="javascript:;">Facebook</a>
                  <br><br>
                  <a href="javascript:;">Giới Thiệu</a>
              </div>
              <div class="col-lg-6">
                <a href="javascript:;">Instagram</a>
                <br><br>
                <a href="javascript:;">Liên Hệ</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="contact-us">
            <h4>ĐỊA CHỈ</h4>
            <div class="row"> 
              <div class="col-lg-12">
                <a href="javascript:;">77 MINH MẠNG - THỪA THIÊN HUẾ</a>
                <br><br>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <a href="javascript:;">0931-981-969</a>
              </div>
              <div class="col-lg-6">
                <a href="javascript:;">08-3579-1111</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="sub-footer">
            <p>Copyright © 2021 ThanhXuan, Ltd. All Rights Reserved.
        </div>
      </div>
    </div>
  </footer>

  @yield('script-footer')

</body>
</html>