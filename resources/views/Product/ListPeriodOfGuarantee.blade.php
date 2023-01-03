@extends('shared.admin.layout')
@section('title', 'Danh sách sản phẩm bảo hành')
@section('content')
<style>
    img {
        background: #dcdcdc;
    }
    th{
        text-align: center;
    }
</style>
<h2>Danh sách bảo hành</h2>
<div class="box_content">
    <form action="/product/ListPeriodOfGuarantee" method="get">
        @csrf
        <div class="row">
            <div class="col-lg-4">
                Sản phẩm
                <select name="productId">
                    <option value="">Tất cả sản phẩm</option>
                    @foreach ($product as $item)
                    <option {{ $productId==$item->ProductId?"selected":"" }} value="{{ $item->ProductId }}">{{ $item->Name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-lg-4">
                Số serial/IMEI <input class="w300" id="IMEI" name="IMEI" type="text" value="{{ $serialNumber }}" />
            </div>
            <input class="w300" id="pageCurrent" name="pageCurrent" hidden type="text" value="1" />
            <div class="col-lg-4 align-self-center">
                <button type="submit" id="submit" class="btn-search">Tìm kiếm</button>
            </div>
        </div>
    </form>
    <p>Có tổng số <strong>{{ $count }}</strong> IMEI</p>
    <table class="list_table tablecenter table-striped">
        <tbody>
            <tr>
                <th style="width: 400px">Tên</th>
                <th>IMEI/SerialNumber</th>
                <th>Khách hàng</th>
                <th>Nhà cung cấp</th>
                <th>Hạn bảo hành</th>
            </tr>
            @foreach ($ProductDetail as $item)
                <tr data-id="{{ $item->ProductDetailId }}">
                    <td>
                        {{ $item->product->ShortName}}
                    </td>
                    <td>
                        {{ $item->SerialNumber }}
                    </td>
                    <td>
                        {{ $item->orderdetail->order->user->Name}}
                    </td>
                    <td>
                        {{ $item->purchasedetail==null?"":$item->purchasedetail->purchase->user->Name }}
                    </td>
                    <td>
                        {{ $item->PeriodOfGuarantee}}
                    </td>
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

        function deleteProduct(id) {
            let _token = $('input[name="_token"]').get(1).value;
            if (confirm("Bạn có chắc chắn xóa sản phẩm này không?")) {
                $.post("/product/DeleteProduct", { product: id, _token:_token}, function (data) {
                    if (data) {
                        alert("Xóa sản phẩm thành công");
                        $("tr[data-id='" + id + "']").fadeOut();
                    } else {
                        alert("Sản phẩm đã phát sinh giao dịch. Không thể xóa");
                    }
                });
            }
    }
</script>
@endsection