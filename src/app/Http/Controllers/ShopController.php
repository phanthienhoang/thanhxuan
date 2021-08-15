<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class ShopController extends Controller
{
    static $priceBetween = [
        '0' => [1, 100000000],
        '1' => [1000000, 3000000],
        '2' => [3000000, 5000000],
        '3' => [5000000, 7000000],
        '4' => [7000000, 100000000]
    ];

    static $genderBetween = [
        '2' => [0, 1],
        '0' => [0, 0],
        '1' => [1, 1]
    ];

    public function index()
    {
        $category = Category::all();
        // $product_list = Product::paginate(12);
        $product_list = Product::orderBy('updated_at', 'desc')->paginate(12);
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);
        // dd($category);
        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request)
    {   
        $category = Category::all();

        $product_list = Product::where('category_id', $request->category)
                                        ->whereBetween('cost', self::$priceBetween[$request->price])
                                        ->whereBetween('gender', self::$genderBetween[$request->gender  ])
                                        ->paginate(12);
        
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);

        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function get_product_by_name(Request $request)
    {   
        $category = Category::all();

        $product_list = Product::where('name', 'like', '%' . $request->productName . '%')->paginate(12);
        
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);

        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet'));
    }

    /**
     * $category_id
     * 2 Nhẫn 
     * 3 Vòng Tay
     * 4 Tượng Phật
     * 5 Tranh phong thuy
     * 6 Vong co
     *
     * @return \Illuminate\Http\Response
     */
    public function getNewProduct($category_id)
    {
        $product = Product::where('category_id', $category_id)
                    ->orderBy('created_at')
                    ->take(6)
                    ->get();

        foreach($product as $val)
        {
            $val['image'] = str_replace('\\','/', $val['image']);
        }

        // dd($product);die;
        return $product;
    }

    /**
     * get product detail
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function getProductDetail($id)
    {
        $category = Category::all();
        $product_detail = Product::where('id', $id)->get();
        $product_image = ProductImage::where('product_id', $id)->get(); 
        $product_detail[0]['price'] = $this->currency_format($product_detail[0]['price']);
        $product_detail[0]['image'] = str_replace('\\','/', $product_detail[0]['image']);
        return view('product.detail', compact('category','product_detail','product_image'));
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