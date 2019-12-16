@extends('layouts-traveller.main')

@section('title', 'Velo - Find Travel Your Buddies')

@section('content')

  <!-- content -->
  <div class="row mx-auto mt-1">
    <div class="container mt-1">
      <div class="row mt-3">

        @if(!$datas->isEmpty())
        @foreach($datas as $data)
        
        <div class="col-md-4 col-sm-6 mt-5">
          <div class="box8">
            <img src="{{ asset('/assets/pic/profilepic/'.$data->photo) }}">
            <h3 class="title">{{ $data->first_name }} {{ $data->last_name }}</h3>
            <div class="box-content">
              <div class="container ulone mt-4 ml-2">
                @if($data->trip_id != null)
                <p><span class="fa fa-map-marker"></span> From: {{ $data->current }}</p>
                <p><span class="fa fa-plane"></span> Want Travel to: {{ $data->destination }}</p>
                <p><span class="fa fa-calendar"></span> Start Travel at: {{ date('j F, Y', strtotime($data->departure_date)) }}</p>
                <p><span class="fa fa-hourglass-start"></span> Trip Duration: {{ $data->trip_duration }}</p>
                <p><span class="fa fa-sticky-note"></span> Note: {{ $data->note }}</p>
                <p class="fixed-bottom ml-3"><span class="fa fa-history"></span> Created at {{ date('j F, Y H:i', strtotime($data->created_at)) }}</p>
                @endif
              </div>
              <ul class="icon ml-3 text-center">
                <li><a href="{{ url('/trip/'.$data->id_traveller.'/detail') }}" data-toggle="tooltip" title="See My Details"><span class="fa fa-info-circle infotext"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        
        @endforeach
        @else
        <div class="container" style="height: 768px;">
          <h1 class="mx-auto">Not Found</h1>
        </div>
        @endif

      </div>
      <!--div row mt-3-->
    </div>
    <!--div container mt-4-->
  </div><!-- row mxauto mt-1 -->
  <!-- end content -->

  <!-- pagination -->
  <nav aria-label="Page navigation example">
    <ul class="pagination mt-5 mx-auto  justify-content-center">
      {{ $datas->appends(Request::only('search'))->links() }}
    </ul>
  </nav>
  <!-- endpagination -->

@endsection