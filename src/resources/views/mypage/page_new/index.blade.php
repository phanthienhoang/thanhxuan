
@extends('mypage.layout_master.layout')

@section('content')
<div class="container mt-5" style="min-height: 20px">
</div>
<div class="container mt-5">
    <div class="row mb-2">
        @foreach ($news as $new)
            <div class="col-md-6">
                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-primary">{{ $new->title }}</strong>
                        <h3 class="mb-0">{{ $new->title }}</h3>
                        <div class="mb-1 text-muted">Nov 12</div>
                        <p class="card-text mb-auto">{{ $new->content }}</p>
                        <a href="{{ $new->slug }}" class="stretched-link">Continue reading</a>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                        <img src="{{ asset('storage/'.$new->image) }}" alt="{{ $new->seo_title }}" srcset="{{ $new->seo_title }}">
                    </div>
                </div>
            </div> 
        @endforeach
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">World</strong>
                    <h3 class="mb-0">Featured post</h3>
                    <div class="mb-1 text-muted">Nov 12</div>
                    <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                    <a href="#" class="stretched-link">Continue reading</a>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
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