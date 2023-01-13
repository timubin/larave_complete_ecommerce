<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Color;
class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $colors=Color::all();
        return view('admin.color.index', compact('colors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.color.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $colors = explode(',',$request->color);
        $color= new Color();
        $color->color=json_encode($colors);
        $color->save();
        return redirect()->back()->with('message','Color Added Successfully Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function change_satus(Color $color)
    {
        if($color->status==1){
            $color->update(['status'=>0]);
        }else{
            $color->update(['status'=>1]);
        }

        return redirect()->back()->with('message','Status Change successfully Creared');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Color $color)
    {
        return view('admin.color.edit',compact('color'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Color $color)
    {
        $colors= explode(',',$request->color);
        $update=$color->update([
            'color'=>json_encode($colors),
            
            
        ]);

        if ( $update)
        return redirect('/colors')->with('message','Color Update successfully Creared');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Color $color)
    {
        $delete=$color->delete();

        if($delete)
        return redirect()->back()->with('message','Color Deleted successfully Creared');
    }
}
