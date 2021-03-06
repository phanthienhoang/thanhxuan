@extends('mypage.layout_master.layout')
@section('content')

  <div class="main-banner" id="banner-home-index">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="top-text header-text">
            <h6>Hơn 2000+ mẫu mã</h6>
            <h2>Tìm kiếm nhanh sản phẩm</h2>
          </div>
        </div>
        <div class="col-lg-12">
          <form id="search-form" name="gs" role="search" action="{{ route('search') }}">
            @method('GET')
            <div class="row">
              <div class="col-lg-3 align-self-center">
                  <fieldset>
                      <select name="category" class="form-select" aria-label="Area" id="chooseCategory" onchange="this.form.click()">
                          {{-- <option value="0" selected>Tất Cả</option> --}}
                          {{-- <option value="New Village">Vòng Tay</option>
                          <option value="Old Town">Đá Quý</option>
                          <option value="Old Town">Tượng Đá Quý</option>
                          <option value="Old Town">Tượng Trầm</option>
                          <option value="Modern City">Tranh Phong Thủy</option> --}}
                          @foreach ($cagegories as $cate)
                            <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                          @endforeach
                      </select>
                  </fieldset>
              </div>
              <!-- <div class="col-lg-3 align-self-center">
                  <fieldset>
                      <input type="address" name="address" class="searchText" placeholder="Enter a location" autocomplete="on" required>
                  </fieldset>
              </div> -->
              <div class="col-lg-3 align-self-center">
                  <fieldset>
                      <select name="price" class="form-select" aria-label="Default select example" id="chooseCategory" onchange="this.form.click()">
                          <option value="0" selected>Mức Giá</option>
                          <option value="1">1 triệu - 3 triệu</option>
                          <option value="2">3 triệu - 5 triệu</option>
                          <option value="3">5 triệu - 7 triệu</option>
                          <option value="4">Trên 7 triệu</option>
                      </select>
                  </fieldset>
              </div>
             <div class="col-lg-3 align-self-center">
                  <fieldset>
                      <select name="gender" class="form-select" aria-label="Default select example" id="chooseCategory" onchange="this.form.click()">
                          <option value="2" selected>Tùy Chọn</option>
                          <option value="0">Nam</option>
                          <option value="1">Nữ</option>
                          <!-- <option value="$500 - $1000">$500 - $1,000</option>
                          <option value="$1000+">$1,000 or more</option> -->
                      </select>
                  </fieldset>
              </div>
              <div class="col-lg-3">
                  <fieldset>
                      <button type="submit" class="main-button"><i class="fa fa-search"></i> Tìm Nhanh</button>
                  </fieldset>
              </div>
            </div>
          </form>
        </div>
        <div class="col-lg-10 offset-lg-1">
          <ul class="categories">
            <li><a href="{{route('page.introduction')}}"><span class="icon"><img src="{{ asset('thanhxuan/assets/images/search-icon-01.png') }}" alt="Home"></span> Giới Thiệu</a></li>
            <li><a href="{{route('page.product')}}"><span class="icon"><img src="{{ asset('thanhxuan/assets/images/search-icon-04.png ') }}" alt="Shopping"></span>Mua Hàng</a></li>
            <!-- <li><a href="#"><span class="icon"><img src="assets/images/search-icon-05.png" alt="Travel"></span> Traveling</a></li> -->
          </ul>
        </div>
      </div>
    </div>
  </div>


  <div class="popular-categories">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2>Danh Mục Sản Phẩm</h2>
            <!-- <h6>Check Them Out</h6> -->
          </div>
        </div>
        <div class="col-lg-12">
          <div class="naccs">
            <div class="grid">
              <div class="row">
                <div class="col-lg-3">
                  <div class="menu">
                    <div class="first-thumb active">
                      <div class="thumb">
                        <span class="icon"><img src="{{ asset('thanhxuan/assets/images/category/da-quy.png') }}" alt=""></span>
                        Nhẫn Đá Quý
                      </div>
                    </div>
                    <div>
                      <div class="thumb">
                        <span class="icon"><img src="{{ asset('thanhxuan/assets/images/category/vong-tay.png') }}" alt=""></span>
                        Vòng Tay
                      </div>
                    </div>
                    <div>
                      <div class="thumb">
                        <span class="icon"><img src="{{ asset('thanhxuan/assets/images/category/tuong-phat.png') }}" alt=""></span>
                        Tượng Phật
                      </div>
                    </div>
                    <div>
                      <div class="thumb">
                        <span class="icon"><img src="{{ asset('thanhxuan/assets/images/category/tranh-phong-thuy.png') }}" alt=""></span>
                        Tranh Phong Thủy
                      </div>
                    </div>
                    <div class="last-thumb">
                      <div class="thumb">
                        <span class="icon"><img src="{{ asset('thanhxuan/assets/images/category/vong-co.png') }}" alt=""></span>
                        Vòng Cổ
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-9 align-self-center">
                  <ul class="nacc">
                    <li class="active">
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Đá quý món quà kỳ diệu của thiên nhiên ban tặng</h4>
                                <p>Đá quý được kết tinh trong lòng đất trải qua hàng triệu năm hấp thu linh khí đất trời. Chính vì vậy, đá quý  không chỉ là món đồ trang sức giá trị mà còn có nhiều ý nghĩa trong đời sống.
                                  Có thể nói đá quý là món quà kỳ diệu mà thiên nhiên ban tặng cho con người.</p>
                                  <div class="main-white-button"><a href="{{route('page.product')}}"><i class="fa fa-eye"></i> Xem tất cả sản phẩm</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="{{ asset('thanhxuan/assets/images/tabs-image-01.jpg') }}" alt="">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Vòng Tay Làm Bằng Đá Hoặc Trầm</h4>
                                <p>Vòng tay phong thủy là một trong những vật phẩm có công dụng mạnh nhất trong việc thay tài đổi vận, mang lại sức khỏe, công danh, tình duyên, tài lộc.</p>
                                <div class="main-white-button"><a href="{{route('page.product')}}"><i class="fa fa-eye"></i> Xem tất cả sản phẩm</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="{{ asset('thanhxuan/assets/images/tabs-image-02.jpg') }}" alt="Foods on the table">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Tượng Phật Phong Thủy</h4>
                                <p>Trầm hương, đá quý được biết đến trong phong thủy như một vật phẩm giúp trừ tà ma. Thường được sử dụng với mong muốn mang lại những điều may mắn. Trầm hương là một loại gỗ quí với hương thơm thanh khiết mà hầu hết các tôn giáo đều sử dụng dể dâng cúng lên các bậc tôn kính của mình. Tượng Phật bằng trầm hương được chế tác từ trầm hương của rừng già.</p>
                                <div class="main-white-button"><a href="{{route('page.product')}}"><i class="fa fa-eye"></i> Xem tất cả sản phẩm</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="{{ asset('thanhxuan/assets/images/tabs-image-03.jpg') }}" alt="cars in the city">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Tranh phong thủy là gì?</h4>
                                <p>Tranh phong thủy được hiểu là loại tranh thu hút sự quan tâm của nhiều ngưởi bởi bức tranh mang lại một vẻ đẹp ấn tượng cho ngôi nhà của bạn, giúp thu hút được sự chú ý của khách đến chơi; không những thế, khi xét về ý nghĩa phong thủy, thì tranh sẽ giúp cho gia chủ cũng như gia đình gặp nhiều điều may mắn, giúp hóa giải điềm xấu, giúp con đường công danh sự nghiệp của gia chủ được thăng tiến.</p>
                                <div class="main-white-button"><a href="{{route('page.product')}}"><i class="fa fa-eye"></i> Xem tất cả sản phẩm</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="{{ asset('thanhxuan/assets/images/tabs-image-04.jpg') }}" alt="Shopping Girl">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div>
                        <div class="thumb">
                          <div class="row">
                            <div class="col-lg-5 align-self-center">
                              <div class="left-text">
                                <h4>Vòng cổ làm bằng đá tự nhiên - trang sức xứng đáng cho cổ của bạn</h4>
                                <p>Trong thế kỷ hai mươi mốt, các nhà thiết kế trang sức đưa ra một loại rất lớn: từ trang sức rẻ tiền đến các tác phẩm nghệ thuật của tác giả tinh xảo với những viên đá quý đắt nhất. Người mua có thể khó điều hướng trong tất cả sự đa dạng này. Nếu bạn chọn vòng cổ làm bằng đá tự nhiên, bạn chắc chắn sẽ không hối tiếc. Nó sẽ là một trang trí xứng đáng của cổ của bạn.</p>
                                <div class="main-white-button"><a href="{{route('page.product')}}"><i class="fa fa-eye"></i> Xem tất cả sản phẩm</a></div>
                              </div>
                            </div>
                            <div class="col-lg-7 align-self-center">
                              <div class="right-image">
                                <img src="{{ asset('thanhxuan/assets/images/tabs-image-05.jpg') }}" alt="Traveling Beach">
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
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


  <div class="recent-listing">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading">
            <h2>Sản Phẩm Nổi Bật</h2>
            <h6>Check Them Out</h6>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="owl-carousel owl-listing">
            <div class="item">
              <div class="row">

                @if(isset($product_hot_ring))
                  @foreach ($product_hot_ring as $product)
                  <div class="col-lg-12">
                    <div class="listing-item">
                      <div class="left-image">
                        <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><img src="{{ asset('storage/'.$product->image) }}" alt=""></a>
                      </div>
                      <div class="right-content align-self-center">
                        <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><h4>{{$product->name}}</h4></a>
                        <h6>by: Đá Quý Thanh Xuân</h6>
                        <ul class="rate">
                          <li><i class="fa fa-star-o"></i></li>
                          <li><i class="fa fa-star-o"></i></li>
                          <li><i class="fa fa-star-o"></i></li>
                          <li><i class="fa fa-star-o"></i></li>
                          <li><i class="fa fa-star-o"></i></li>
                          <li>(24) Reviews</li>
                        </ul>
                        <span class="price"><div class="icon"><img src="{{ asset('thanhxuan/assets/images/listing-icon-01.png') }}" alt=""></div> {{$product->price}}</span>
                        <span class="details"><em>{{Illuminate\Support\Str::limit($product->seo_description, 50)}}</em></span>
                        <ul class="info">
                          {{-- <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-02.png') }}" alt=""> 4 Bedrooms</li>
                          <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-03.png') }}" alt=""> 3 Bathrooms</li> --}}
                        </ul>
                        <div class="main-white-button">
                          <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><i class="fa fa-eye"></i> Xem Ngay</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  @endforeach
                @endif
               

              </div>
            </div>
            <div class="item">
              <div class="row">
                @if(isset($product_hot_bracelet))
                @foreach ($product_hot_bracelet as $product)
                <div class="col-lg-12">
                  <div class="listing-item">
                    <div class="left-image">
                      <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><img src="{{ asset('storage/'.$product->image) }}" alt=""></a>
                    </div>
                    <div class="right-content align-self-center">
                      <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><h4>{{$product->name}}</h4></a>
                      <h6>by: Đá Quý Thanh Xuân</h6>
                      <ul class="rate">
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li>(24) Reviews</li>
                      </ul>
                      <span class="price"><div class="icon"><img src="{{ asset('thanhxuan/assets/images/listing-icon-01.png') }}" alt=""></div> {{$product->price}}</span>
                      <span class="details"><em>{{Illuminate\Support\Str::limit($product->seo_description, 50)}}</em></span>
                      <ul class="info">
                        {{-- <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-02.png') }}" alt=""> 4 Bedrooms</li>
                        <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-03.png') }}" alt=""> 3 Bathrooms</li> --}}
                      </ul>
                      <div class="main-white-button">
                        <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><i class="fa fa-eye"></i> Xem Ngay</a>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
              @endif
             

    
              </div>
            </div>
            <div class="item">
              <div class="row">
                @if(isset($product_hot_buddha))
                @foreach ($product_hot_buddha as $product)
                <div class="col-lg-12">
                  <div class="listing-item">
                    <div class="left-image">
                      <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><img src="{{ asset('storage/'.$product->image) }}" alt=""></a>
                    </div>
                    <div class="right-content align-self-center">
                      <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><h4>{{$product->name}}</h4></a>
                      <h6>by: Đá Quý Thanh Xuân</h6>
                      <ul class="rate">
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li><i class="fa fa-star-o"></i></li>
                        <li>(24) Reviews</li>
                      </ul>
                      <span class="price"><div class="icon"><img src="{{ asset('thanhxuan/assets/images/listing-icon-01.png') }}" alt=""></div> {{$product->price}}</span>
                      <span class="details"><em>{{Illuminate\Support\Str::limit($product->seo_description, 50)}}</em></span>
                      <ul class="info">
                        {{-- <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-02.png') }}" alt=""> 4 Bedrooms</li>
                        <li><img src="{{ asset('thanhxuan/assets/images/listing-icon-03.png') }}" alt=""> 3 Bathrooms</li> --}}
                      </ul>
                      <div class="main-white-button">
                        <a href="{{route('page.detail', $product->id .'/' . $product->slug)}}"><i class="fa fa-eye"></i> Xem Ngay</a>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach
              @endif
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
  <script>
  $(document).ready(function() {
    var bgArray = ['banner-bg-01.jpg', 'banner-bg-02.jpg', 'banner-bg-03.jpg','banner-bg-04.jpg'];
    var bg = bgArray[Math.floor(Math.random() * bgArray.length)];
    var img = 'thanhxuan/assets/images/' + bg;
    $('#banner-home-index').attr('style','background-image:url("'+img+'") !important');
 });
</script>
@stop