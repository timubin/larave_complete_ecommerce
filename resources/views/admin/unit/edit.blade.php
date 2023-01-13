@extends('admin.admin_master')

@section('admin_content')


@if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
            <p class="alert-success">
							@php 
							$message = Session::get('message');
							if($message)
							{
								echo $message;
								Session::put('message',null);
							}
							
							@endphp 
						</p>
                <h2><i class="halflings-icon edit"></i><span class="break"></span>Edit Unit</h2>

            </div>

            <div class="box-content">
            <form class="form-horizontal" action="{{url('/units/'.$unit->id)}}" method="post">
                    @csrf
                    @method('PUT')
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="date01">Unit Name</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" name="name" value="{{$unit->name}}" required>
                            </div>
                        </div>


                        <div class="control-group hidden-phone">
                            <label class="control-label" for="textarea2"> Description</label>
                            <div class="controls">
                                <textarea class="cleditor" name="description" rows="3" required>{{$unit->description}}</textarea>
                            </div>

                        </div>

                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </fieldset>
                </form>

            </div>
        </div>
    </div>
    </div>


@endsection