@extends('shared.admin.layout')
@section('title', 'Danh sách sản phẩm')
@section('content')
<style>
    img {
        background: #dcdcdc;
    }
    th{
        text-align: center
    }
</style>
<h2>Tổng hợp nhập xuất tồn</h2>
<div class="box_content">
    <form action="/report/StockSumary" method="get">
        @csrf
        <div class="row">
            <div class="col-lg-3">
                Danh mục
                <select name="catId">
                    <option value="">Tất cả danh mục</option>
                    @foreach ($category as $item)
                    <option {{ $catId == $item->CategoryId?"selected":"" }} value="{{ $item->CategoryId }}">{{ $item->Name }}</option>
                    @endforeach
                </select>
            </div>
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
    <p>Có tổng số <strong>{{ $count }}</strong> sản phẩm</p>
    <table class="list_table tablecenter table-striped">
        <tbody>
            <tr>
                <th>Id</th>
                <th>Tên hàng</th>
                <th>Số lượng nhập</th>
                <th>Tiền nhập</th>
                <th>Số lượng xuất</th>
                <th>Tiền xuất</th>
                <th>Tồn</th>
                <th>Dư</th>
            </tr>
            <tr data-id="{{ $item->ProductId }}">
                <td></td>
                <td style="color: red">TỔNG</td>
                <td style="color: red">{{ $SoLuongNhap }}</td>
                <td style="color: red">{{ $TienNhap }}</td>
                <td style="color: red">{{ $SoLuongXuat }}</td>
                <td style="color: red">{{ round($TienXuat) }}</td>
                <td style="color: red">{{ $SoLuongNhap -  $SoLuongXuat}}</td>
                <td style="color: red">{{ round($TienXuat-$TienNhap)}}</td>
            </tr>
            @foreach ($product as $item)
                <tr data-id="{{ $item->ProductId }}">
                    <td>{{ $item->ProductId}}</td>
                    <td>{{ $item->ShortName}}</td>
                    <td>{{ $item->SoLuongNhap }}</td>
                    <td>{{ $item->TienNhap }}</td>
                    <td>{{ $item->SoLuongXuat }}</td>
                    <td>{{ round($item->TienXuat) }}</td>
                    <td>{{ $item->SoLuongNhap -  $item->SoLuongXuat}}</td>
                    <td>{{ round($item->TienXuat-$item->TienNhap)}}</td>
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