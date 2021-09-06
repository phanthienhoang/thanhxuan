
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
        @foreach ($news as $new)
            <div class="col-md-6">
                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col-auto d-none d-lg-block">
                        <img src="{{ asset('storage/'.$new->image) }}" alt="{{ $new->seo_title }}" srcset="{{ $new->seo_title }}">
                    </div>
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-primary">{{ $new->title }}</strong>
                        <h3 class="mb-0">{{ $new->title }}</h3>
                        <div class="mb-1 text-muted">Nov 12</div>
                        <!-- <p class="card-text mb-auto">{!!$new->content!!}</p> -->
                        <a href="{{ $new->slug }}" class="stretched-link">Continue reading</a>
                    </div>
                </div>
            </div> 
        @endforeach
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