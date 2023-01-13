<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories=Category::all();
        return view('admin.category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $category= new Category();
        $category->id= $request->category;
        $category->name= $request->name;
        $category->description= $request->description;
        $category->image=$request->image->store('category');

        $category->save();
        return redirect()->back()->with('message','Category Successfully Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function change_satus(Category $category)
    {
        if($category->status==1){
            $category->update(['status'=>0]);
        }else{
            $category->update(['status'=>1]);
        }

        return redirect()->back()->with('message','Status Change successfully Creared');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('admin.category.edit',compact('category'));
       /*  return view('admin.category.edit',compact('category')); */
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $update=$category->update([
            'name'=>$request->name,
            'description'=>$request->description,
            'image'=>$request->file('image')->store('category'),
        ]);

        if ( $update)
        return redirect('/categories')->with('message','Category Update successfully Creared');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
       $delete=$category->delete();

       if($delete)
       return redirect()->back()->with('message','Category Deleted successfully Creared');
    }
}
