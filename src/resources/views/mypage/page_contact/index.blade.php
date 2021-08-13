
@extends('mypage.layout_master.layout')
@section('content')

<div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="top-text header-text">
            <h6>liên lạc với chúng tôi</h6>
            <h2>Vui lòng gửi cho chúng tôi một tin nhắn về nhu cầu kinh doanh của bạn</h2>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-page">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="inner-content">
            <div class="row">
              <div class="col-lg-6">
                <div id="map">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.9133700705847!2d107.57727741536357!3d16.42922553405225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a3f96538e185%3A0x462003ea36e51b0f!2zNzcgTWluaCBN4bqhbmcsIFRo4buneSBYdcOibiwgVGjDoG5oIHBo4buRIEh14bq_LCBUaOG7q2EgVGhpw6puIEh14bq_LCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1628839323569!5m2!1sen!2s" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
              </div>
              <div class="col-lg-6 align-self-center">
                <form id="contact" action="" method="get">
                  <div class="row">
                    <div class="col-lg-6">
                      <fieldset>
                        <input type="name" name="name" id="name" placeholder="Name" autocomplete="on" required>
                      </fieldset>
                    </div>
                    <div class="col-lg-6">
                      <fieldset>
                        <input type="surname" name="surname" id="surname" placeholder="Surname" autocomplete="on" required>
                      </fieldset>
                    </div>
                    <div class="col-lg-12">
                      <fieldset>
                        <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                      </fieldset>
                    </div>
                    <!-- <div class="col-lg-12">
                      <ul>
                        <li><input type="checkbox" name="option1" value="cars"><span>Cars</span></li>
                        <li><input type="checkbox" name="option2" value="aparmtents"><span>Apartments</span></li>
                        <li><input type="checkbox" name="option3" value="shopping"><span>Shopping</span></li>
                        <li><input type="checkbox" name="option4" value="food"><span>Food &amp; Life</span></li>
                        <li><input type="checkbox" name="option5" value="traveling"><span>Traveling</span></li>
                      </ul>
                    </div> -->
                    <div class="col-lg-12">
                      <fieldset>
                        <textarea name="message" type="text" class="form-control" id="message" placeholder="Message" required=""></textarea>  
                      </fieldset>
                    </div>
                    <div class="col-lg-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="main-button "><i class="fa fa-paper-plane"></i> Send Message</button>
                      </fieldset>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

@endsection

@section('script-footer')
      <!-- Scripts -->
  <script src="{{ asset('thanhxuan/vendor/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('thanhxuan/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('thanhxuan/assets/js/owl-carousel.js') }}"></script>
  <script src="{{ asset('thanhxuan/assets/js/animation.js') }}"></script>
  <script src="{{ asset('thanhxuan/assets/js/imagesloaded.js') }}"></script>
  <script src="{{ asset('thanhxuan/assets/js/custom.js') }}"></script>

@stop