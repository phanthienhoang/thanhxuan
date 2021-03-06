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
        $product_list = Product::orderBy('updated_at', 'desc')->paginate(12);
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);
        $product_hot = $this->getProductIsHost(1);
        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet','product_hot'));
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
                                        ->whereBetween('gender', self::$genderBetween[$request->gender])
                                        ->paginate(12)->withQueryString();
        
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);
        $product_hot = $this->getProductIsHost(1);
        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet','product_hot'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function get_product_by_name(Request $request)
    {   
        $category = Category::all();

        $product_list = Product::where('name', 'like', '%' . $request->productName . '%')->paginate(12)->withQueryString();
        
        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);
        //$product_hot = $this->getProductIsHost(1);

        // t???t s???n ph???m n???i b???t khi t??m ki???m
        $product_hot = [];

        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet','product_hot'));
    }

    /**
     * $category_id
     * 2 Nh???n 
     * 3 V??ng Tay
     * 4 T?????ng Ph???t
     * 5 Tranh phong thuy
     * 6 Vong co
     *
     * @return \Illuminate\Http\Response
     */
    public function get_product_by_category($category_id,$slug)
    {
        $category = Category::all();

        $product_list = Product::where('category_id', $category_id)
                    ->orderBy('created_at')
                    ->paginate(12);

        foreach($product_list as $val)
        {
            $val['image'] = str_replace('\\','/', $val['image']);
            $val['price'] = $this->currency_format($val['price']);
        }

        $product_new_ring = $this->getNewProduct(2);
        $product_new_bracelet = $this->getNewProduct(3);
        // $product_hot = $this->getProductIsHost(1);

        // t???t s???n ph???m n???i b???t khi t??m ki???m
        $product_hot = [];
        return view('shop.index', compact('category','product_list','product_new_ring','product_new_bracelet','product_hot'));
    }

    /**
     * $category_id
     * 2 Nh???n 
     * 3 V??ng Tay
     * 4 T?????ng Ph???t
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
            $val['price'] = $this->currency_format($val['price']);
        }

        // dd($product);die;
        return $product;
    }

    /**
     * HOT
     *
     * @return \Illuminate\Http\Response
     */
    public function getProductIsHost($isHot)
    {
        $product = Product::where('isHot', $isHot)
                    ->orderBy('created_at')
                    ->take(6)
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
     * get product detail
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function getProductDetail($id,$slug)
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
     * Chuy???n ?????i chu???i k?? t??? th??nh d???ng slug d??ng cho vi???c t???o friendly url.
     *
     * @access    public
     * @param    string
     * @return    string
     */
    function currency_format($number, $suffix = '??') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') ." " . "{$suffix}";
        }
    }
}