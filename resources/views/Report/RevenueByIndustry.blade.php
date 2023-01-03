@extends('shared.admin.layout')
@section('title', 'Doanh thu theo nhóm hàng')
@section('content')
<style>
    img {
        background: #dcdcdc;
    }
    th{
        text-align: center
    }
</style>
<h2>Doanh thu theo nhóm hàng</h2>
<div class="box_content">
    <form action="/report/RevenueByIndustry" method="get">
        @csrf
        <div class="row">
            <div class="col-lg-3">
                Từ ngày <input class="w300" id="dateFrom" name="dateFrom" type="date" value="{{ $dateFrom==""?"":$dateFrom->format('Y-m-d') }}"/>
            </div>
            <div class="col-lg-3">
                Đến ngày <input class="w300" id="dateTo" name="dateTo" type="date" value="{{ $dateTo==""?"":$dateTo->format('Y-m-d') }}"/>
            </div>
            <input class="w300" id="pageCurrent" name="pageCurrent" hidden type="text" value="1" />
            <div class="col-lg-3 align-self-center">
                <button type="submit" id="submit" class="btn-search">Tìm kiếm</button>
            </div>
        </div>
    </form>
    <p>Có tổng số <strong>{{ $count }}</strong> nhóm</p>
    <table class="list_table tablecenter table-striped">
        <tbody>
            <tr>
                <th>Tên danh mục</th>
                <th>Mô tả</th>
                <th>Số lượng bán</th>
                <th>Doanh thu</th>
            </tr>
            <tr>
                <td style="color: red"></td>
                <td style="color: red">TỔNG</td>
                <td style="color: red">{{ $SoLuongBan }}</td>
                <td style="color: red">{{ $DoanhThu }}</td>
            </tr>
            @foreach ($cat as $item)
                <tr data-id="{{ $item->CategoryId }}">
                    <td>{{ $item->Name}}</td>
                    <td>{{ $item->Description}}</td>
                    <td>{{ $item->SoLuongBan }}</td>
                    <td>{{ round($item->DoanhThu) }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@for ($i = 1; $i <= $page; $i++)
@if($pageCurrent==$i)
    <div class="btn btn-primary btn-paging filter" style="background: red;">{{ $i }}</div>
@else
    <div class="btn btn-primary btn-paging filter">{{ $i }}</div>              
@endif
@endfor
<script>
    $('.btn.btn-primary.btn-paging').on("click",function(){
        $('#pageCurrent').val($(this).html());
        $( "#submit" ).click();
    })
</script>
@endsection