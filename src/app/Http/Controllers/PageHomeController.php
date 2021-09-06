<?php

namespace App\Http\Controllers;

use App\Models\PageHome;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\News;


class PageHomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function page_index()
    {   
        $cagegories = Category::all();

        $product_hot_ring       = $this->getProductIsHost(1, 2);
        $product_hot_bracelet   = $this->getProductIsHost(1, 3);
        $product_hot_buddha     = $this->getProductIsHost(1, 4);

        return view('mypage.page_index.index', compact('cagegories', 'product_hot_ring','product_hot_bracelet','product_hot_buddha'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function page_contact()
    {
        return view('mypage.page_contact.index');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function page_blog()
    {
        $news = News::all();
        
        return view('mypage.page_new.index', compact('news'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function page_blog_detail($slug = null)
    {
        $new = News::where('slug',$slug)->first();
        
        return view('mypage.page_new.detail', compact('new'));
    }

    /**
     * Display a listing of the resource.page_introduction
     *
     * @return \Illuminate\Http\Response
     */
    public function page_introduction()
    {
        return view('mypage.page_introduction.index');
    }


    /**
     * Display a listing of the resource.page_category
     *
     * @return \Illuminate\Http\Response
     */
    public function page_category()
    {
        return view('mypage.page_category.index');
    }

    /**
     * Display a listing of the resource.page_category
     *
     * @return \Illuminate\Http\Response
     */
    public function page_detail()
    {
        return view('mypage.page_detail.index');
    }

    /**
     * HOT
     * 2 Nhẫn 
     * 3 Vòng Tay
     * 4 Tượng Phật
     * 5 Tranh phong thuy
     * 6 Vong co
     * @return \Illuminate\Http\Response
     */
    public function getProductIsHost($isHot, $id)
    {
        $product = Product::where('isHot', $isHot)
                    ->where('category_id', $id)
                    ->orderBy('created_at')
                    ->take(3)
                    ->get();

        foreach($product as $val)
        {
            $val['image'] = str_replace('\\','/', $val['image']);
            $val['price'] = $this->currency_format($val['price']);
        }

        // dd($product);die;
        return $product;
    }

    /**
     *
     * Chuyển đổi chuỗi kí tự thành dạng slug dùng cho việc tạo friendly url.
     *
     * @access    public
     * @param    string
     * @return    string
     */
    function currency_format($number, $suffix = 'đ') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') ." " . "{$suffix}";
        }
    }
}
