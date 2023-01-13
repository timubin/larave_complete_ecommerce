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
							<?php 
							$message = Session::get('message');
							if($message)
							{
								echo $message;
								Session::put('message',null);
							}
							
							?>
						</p>
                <h2><i class="halflings-icon edit"></i><span class="break"></span>Add Color</h2>

            </div>

            <div class="box-content">
                <form class="form-horizontal" action="{{url('/colors/')}}" method="post">
                    @csrf
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="date01">Color</label>
                            <div class="controls">
                                <input type="text" class="input-xlarge" name="color" id="input" data-role="tagsinput" required>
                            </div>
                        </div>

                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Add Color</button>
                        </div>
                    </fieldset>
                </form>

            </div>
        </div><!--/span-->
    </div><!--/row-->
    </div><!--/row-->

    <script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"
  ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
  <script>
    $(function () {
      $('input')
        .on('change', function (event) {
          var $element = $(event.target);
          var $container = $element.closest('.example');

          if (!$element.data('tagsinput')) return;

          var val = $element.val();
          if (val === null) val = 'null';
          var items = $element.tagsinput('items');

          $('code', $('pre.val', $container)).html(
            $.isArray(val)
              ? JSON.stringify(val)
              : '"' + val.replace('"', '\\"') + '"'
          );
          $('code', $('pre.items', $container)).html(
            JSON.stringify($element.tagsinput('items'))
          );
        })
        .trigger('change');
    });
  </script>

    

    @endsection