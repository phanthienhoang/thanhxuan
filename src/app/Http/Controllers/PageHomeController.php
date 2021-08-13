<?php

namespace App\Http\Controllers;

use App\Models\PageHome;
use Illuminate\Http\Request;

class PageHomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function page_index()
    {
        return view('mypage.page_index.index');
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
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\PageHome  $pageHome
     * @return \Illuminate\Http\Response
     */
    public function show(PageHome $pageHome)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\PageHome  $pageHome
     * @return \Illuminate\Http\Response
     */
    public function edit(PageHome $pageHome)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\PageHome  $pageHome
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PageHome $pageHome)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PageHome  $pageHome
     * @return \Illuminate\Http\Response
     */
    public function destroy(PageHome $pageHome)
    {
        //
    }
}
