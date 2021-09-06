
@extends('mypage.layout_master.layout')

@section('content')
<div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="top-text header-text">
            <!-- <h6>THANH XUÂN</h6> -->
            <h2>ĐÁ QUÝ THANH XUÂN - CHUYÊN GIA PHONG THỦY</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="container mt-5" style="min-height: 20px">
</div>
<div class="container mt-5">
    <div class="row mb-2">
            <div class="col-md-1"></div>
            <div class="col-md-10">
              <h3>{{$new->title}}</h3>
              <img src="{{ asset('storage/'.$new->image) }}" alt="{{ $new->seo_title }}" srcset="{{ $new->seo_title }}">
              <p>{!!$new->content!!}</p>
            </div> 
            <div class="col-md-1"></div>
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