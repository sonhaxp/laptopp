@extends('shared.admin.layout')
@section('title', 'Danh sách nhân viên')
@section('content')
<style>
    img {
        background: #dcdcdc;
    }
    th{
        text-align: center
    }
</style>
<h2>Tổng hợp doanh số của nhân viên</h2>
<div class="box_content">
    <form action="/report/EmployeeSumary" method="get">
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
    <p>Có tổng số <strong>{{ $count }}</strong> nhân viên</p>
    <table class="list_table tablecenter table-striped">
        <tbody>
            <tr>
                <th>Tên nhân viên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
                <th>Số lượng bán</th>
                <th>Doanh số</th>
            </tr>
            <tr>
                <td></td>
                <td style="color: red"></td>
                <td style="color: red"></td>
                <td style="color: red">TỔNG</td>
                <td style="color: red">{{ $SoLuongBan }}</td>
                <td style="color: red">{{ $DoanhThu }}</td>
            </tr>
            @foreach ($user as $item)
                <tr data-id="{{ $item->UserName }}">
                    <td>{{ $item->Name}}</td>
                    <td>{{ $item->Email}}</td>
                    <td>{{ $item->PhoneNumber }}</td>
                    <td>{{ $item->Address }}</td>
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