@extends('shared.admin.layout')
@section('title', 'Cập nhật phiếu nhập')
@section('content')
<style>
    img {
        background: #dcdcdc;
    }
</style>
<h2>Phiếu nhập</h2>
<a class="btn quick-link" href="/purchase/CreatePurchase"><i class="fal fa-plus-circle mr-1"></i>Tạo phiếu nhập</a>
<div class="box_content">
    <div class="row">
        <div class="col-lg-4">
            Loại phiếu nhập
            <select name="typePurchase" id="PurchaseId">
                @foreach ($typePurchase as $item)
                @if ($purchase->Status==$item->AttributeValueId)
                <option selected value="{{ $item->AttributeValueId }}">{{ $item->Value }}</option>    
                @else
                <option value="{{ $item->AttributeValueId }}">{{ $item->Value }}</option>    
                @endif
                @endforeach
            </select>
        </div>
        <div class="col-lg-4">
            Nhà cung cấp
            <select name="Supplier" id="SupplierId">
                <option value="">Chọn nhà cung cấp</option>
                @foreach ($supplier as $item)
                @if ($purchase->SupplierId == $item->UserId)
                    <option selected value="{{ $item->UserId }}">{{ $item->Name }}</option>  
                @else
                    <option value="{{ $item->UserId }}">{{ $item->Name }}</option>  
                @endif
                @endforeach
            </select>
        </div>
        <div class="col-lg-4">
            Người giao
            <input type="text" name="Deliver" id="Deliver" value="{{ $purchase->Deliver }}">
        </div>
        <div class="col-lg-4">
            Địa chỉ
            <input type="text" name="Address" id="Address" value="{{ $purchase->Address }}">
        </div>
        <div class="col-lg-4">
            Số điện thoại
            <input type="text" name="PhoneNumber" id="PhoneNumber" value="{{ $purchase->PhoneNumber }}">
        </div>
        <div class="col-lg-4">
            Email
            <input type="text" name="Email" id="Email" value="{{ $purchase->Email }}">
        </div>
        <div class="col-lg-4">
            Ngày lập
            <input type="date" name="CreateAt" id="CreateAt" value="{{ $purchase->CreateAt->toDateString() }}">
        </div>
        <div class="col-lg-4">
            Người lập: 
            <input type="text" name="" id="" value="{{ $purchase->createby->Name }}" readonly style="border: none">
        </div>
        <div class="col-lg-4">
            Người sửa: 
            <input type="text" name="" id="" value="{{ session('admin')->Name }}" readonly style="border: none">
        </div>
    </div>
    <div><h5>Chi tiết phiếu nhập</h5></div>
    <div class="row">
        <div class="col-lg-4">
            Tên sản phẩm
            <select name="Product" id="Product">
                <option value="">Chọn sản phẩm</option>
                @foreach ($product as $item)
                <option value="{{ $item->ProductId }}">{{ $item->Name }}</option>
                @endforeach
            </select>
        </div>
        <div class="col-lg-4">
            Thời hạn bảo hành (tháng)
            <input class="form_control w300" id="PeriodOfGuarantee" name="PeriodOfGuarantee" type="text"  />
        </div>
        <div class="col-lg-4">
            Đơn giá nhập
            <input class="form_control w300" id="Price" name="Price" type="text"  />
        </div>
        <div class="col-lg-4">
            Số lượng
            <input class="form_control w300" id="Quantity" name="Quantity" type="text"  />
        </div>
        <div class="col-lg-4">
            Đơn giá bán
            <input class="form_control w300" id="PriceSale" name="PriceSale" type="text"  />
        </div>
    </div>
    <div class= 'col-lg-2'>IMEI/SerialNumber</div>
    <div id="trIMEI" class="row">

    </div>
    <h3 style="text-align: center;"><input type="submit" class="btn quick-link" id="btnAdd" value="Thêm mới" /></h3>
    <form action="/purchase/SubmitCreatePurchase" method="post" id="Purchase">
        @csrf
        <input type="text" id="id" name="id" hidden value="{{$purchase->PurchaseId}}">
    <table class="list_table tablecenter table-striped table table-fit">
        <tbody>
            <tr id="renderProductDetail">
                <th>Mã hàng</th>
                <th>Tên hàng</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
                <th style="width: 20%">IMEI/SN</th>
                <th>Hạn bảo hành</th>
                <th>Thao tác</th>
            </tr>
            {{-- @foreach ($purchasedetail as $item)
                <tr data-id="{{ $item->PurchaseId }}">
                    <td>{{ $item->ProductId}}</td>
                    <td>{{ $item->Product->Name }}</td>
                    <td>{{ $item->Quantity}}</td>
                    <td>{{ $item->Price }}</td>
                    <td>{{ $item->Discount }}</td>
                    <td>{{ $item->Price*$item->Quantity*(1-$item->Discount/100) }}</td>
                    <td>
                        <div>
                            @for ($i = 0; $i < $item->Quantity; $i++)
                            <input type="text" name="{{ $item->ProductId }}[]" id="IMEI" value="" class="IMEI">
                            @endfor
                        </div>
                    </td>
                    <td>
                        <div>
                            <div  class="HBH">{{ $item->Product->PeriodOfGuarantee }}th</div>
                        </div>
                    </td>
                    <td>
                        <div>
                            <div  class="sl">{{ $item->Product->Quantity }}</div>
                        </div>
                    </td>
                </tr>
            @endforeach --}}
        </tbody>
    </table>
    <h2><input type="submit" id="btnSubmit" class="btn quick-link" value="Lưu"></h2>
</form>
</div>
<script>
    var idPurchase = window.location.href.split('purchaseId=')[1];
    var idproduct = 0;
    var isUpdate = false;
    var imeiCurrent = [];
    listProduct = new Map();
    GetPurchaseDetail();
    async function GetPurchaseDetail(){
        await $.ajax({
        url: "/GetPurchaseDetail2?purchaseId=" + idPurchase,
        method: "GET",
        success: function (res) {
            for (let i = 0; i < res.length; i++) {
                IMEI = [];
                res[i].IMEI.forEach(element => {
                    IMEI.push(element.SerialNumber)
                });
                let ProductDetail = {
                    ProductId:`${res[i].ProductId}`,
                    ProductName:res[i].ProductName,
                    Quantity: res[i].Quantity,
                    PeriodOfGuarantee: res[i].product.PeriodOfGuarantee,
                    Price:  res[i].Price,
                    PriceSale:  res[i].product.Price,
                    IMEI : IMEI
                };
                listProduct.set(ProductDetail.ProductId,ProductDetail)
                html = ``;
                total = 0;
                for (const [key, value] of listProduct) {
                    html+=` <tr class="deleleProductDetail" data-id="${key}">
                            <td>${key}</td>
                            <td>${value.ProductName}</td>
                            <td>${value.Quantity}</td>
                            <td>${value.Price}</td>
                            <td>${value.Quantity * value.Price}</td>
                            <td>${value.IMEI.toString()}</td>
                            <td>${value.PeriodOfGuarantee}th</td>
                            <td>
                                <a href="javascript:;" style="color:green;font-size:14px" onclick="updateProductDetail(${key})">Sửa</a>
                                <a href="javascript:;" style="color:red;font-size:14px" onclick="deleteProductDetail(${key})">Xóa</a>
                            </td>
                        </tr>`
                    total+=value.Quantity * value.Price;
                }
                html+=` <tr class="deleleProductDetail" data-id="">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><div style="color:red;font-size:16px"><strong>Tổng</strong></div></td>
                            <td><div style="color:red;font-size:16px"><strong>${total}</strong><div></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>`
                $('.deleleProductDetail').remove();
                $('#renderProductDetail').after(html);
            }
        },
        error: function () {
            console.log("Load api get thất bại");
        }
    });
    }


    $('#Product').on("change",function(){
        idproduct = this.value;
        if(this.value==""){
            $('#PeriodOfGuarantee').val('');
            $('#Quantity').val('');
            $('#Price').val('');
        }
        else
        $.ajax({
        url: "/GetInfoProduct?id=" + this.value,
        method: "GET",
        success: function (res) {
            res = JSON.parse(res);
            $('#PeriodOfGuarantee').val(res.PeriodOfGuarantee);
            $('#Quantity').val('');
            $('#Price').val(res.Price);
            $('#PriceSale').val(res.Price);
            $('#trIMEI').html('')
        },
        error: function () {
            console.log("Load api get thất bại");
        }
        });
    })

    $('#SupplierId').on("change",function(){
        if(this.value==""){
            $('#Deliver').val('');
            $('#PhoneNumber').val('');
            $('#Email').val('');
            $('#Address').val('');
            $('#trIMEI').html('')
        }
        else
        $.ajax({
        url: "/GetInfoSupplier?id=" + this.value,
        method: "GET",
        success: function (res) {
            res = JSON.parse(res);
            $('#Deliver').val(res.Name);
            $('#PhoneNumber').val(res.PhoneNumber);
            $('#Email').val(res.Email);
            $('#Address').val(res.Address);
        },
        error: function () {
            console.log("Load api get thất bại");
        }
        });
    })

    $('#Quantity').on("change",function(){
        if(idproduct == "" || idproduct==0){
            alert('Bạn phải nhập sản phẩm trước');
        }
        else
        if(isNaN(this.value)){
            alert('Số lượng phải là số');
        }
        else if(this.value<0){
            alert('Số lượng phải lớn hơn 0');
        }
        else{
            var html = ""
            for (let index = 0; index < this.value; index++) {
                html+="<div class= 'col-lg-2'><input type='text' name='"+idproduct+"[]'' id='IMEI' value='' class='IMEI'></div>";
            }
            $('#trIMEI').html(html)
        }

    })
    $('#btnAdd').on("click", async function()
    {
        if($('#Quantity').val() == ""){
            alert('Vui lòng nhập sản phẩm và số lượng');
            return
        }
        if($('#Price').val()==""){
            alert('Giá không dc để trống');
            return
        }
        if(isNaN($('#Price').val())){
            alert('Giá phải là số');
            return
        }
        if(isNaN($('#PriceSale').val())){
            alert('Giá bán phải là số');
            return
        }
        if($('#PeriodOfGuarantee').val()==""){
            alert('Giá không dc để trống');
            return
        }
        if(isNaN($('#PeriodOfGuarantee').val())){
            alert('Giá phải là số');
            return
        }
        var imei = new Set();
        var imeiArray = []
        for (let index = 0; index < $('.IMEI').length; index++) {
        if($('.IMEI').get(index).value==""||$('.IMEI').get(index).value.length<6){
            alert("IMEI không được để trống và phải từ 6 kí tự trở lên")
            return 1;
        }
        else{
            imei.add($('.IMEI').get(index).value);
            imeiArray.push($('.IMEI').get(index).value);
        }
        }
        if(imei.size!=$('.IMEI').length){
            alert("Đã có IMEI trùng nhau. Vui lòng kiểm tra lại");
            return
        }
        var flag = false;
        // imeiArray.forEach(element => {
        //     for (let index = 0; index < imeiCurrent.length; index++) {
        //         console.log(imeiCurrent[index]);
        //         if(imeiCurrent[index] == element){
        //             imeiCurrent.splice(index,1);
        //             return;
        //         } 
        //     }
        // });
        res = imeiArray.filter((element, index, array) => {
            let check = true;
            imeiCurrent.forEach(e=>{
                if(element==e){
                    check = false;
                }
            })
            return check;
        })
        console.log(res);
        if(res.length!=0)
        await $.get('/purchase/checkSerialNumber',{id:idproduct,serialNumber:res},function(res){
            if(res!=""){
                alert('Mã IMEI đã tồn tại. '+res);
                flag = true;
            }
        })

        if(flag==true) return;

        const ProductDetail = {ProductId:idproduct,ProductName:$('#Product  option:selected').text(),  Quantity: $('#Quantity').val()*1,PeriodOfGuarantee: $('#PeriodOfGuarantee').val()*1, Price: $('#Price').val()*1, PriceSale: $('#PriceSale').val()*1, IMEI : imeiArray};
        if(listProduct.get(ProductDetail.ProductId)==null||isUpdate){
            listProduct.set(ProductDetail.ProductId,ProductDetail)
        }
        else{
            alert('Sản phẩm đã được thêm trước đó rồi!!!');
            return
        }
        html = ``;
        total = 0;
        for (const [key, value] of listProduct) {
            html+=` <tr class="deleleProductDetail" data-id="${key}">
                    <td>${key}</td>
                    <td>${value.ProductName}</td>
                    <td>${value.Quantity}</td>
                    <td>${value.Price}</td>
                    <td>${value.Quantity * value.Price}</td>
                    <td>${value.IMEI.toString()}</td>
                    <td>${value.PeriodOfGuarantee}th</td>
                    <td>
                        <a href="javascript:;" style="color:green;font-size:14px" onclick="updateProductDetail(${key})">Sửa</a>
                        <a href="javascript:;" style="color:red;font-size:14px" onclick="deleteProductDetail(${key})">Xóa</a>
                    </td>
                </tr>`
            total+=value.Quantity * value.Price;
        }
        html+=` <tr class="deleleProductDetail" data-id="">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><div style="color:red;font-size:16px"><strong>Tổng</strong></div></td>
                    <td><div style="color:red;font-size:16px"><strong>${total}</strong><div></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>`
        $('.deleleProductDetail').remove();
        $('#renderProductDetail').after(html);
        isUpdate = false;
        $('#btnAdd').val("Thêm mới")
    });

    $('#btnSubmit').on("click",function(e){
        e.preventDefault();
        if($('#SupplierId').val() == ""){
            alert('Vui lòng chọn nhà cung cấp');
            return
        }
        if($('#Deliver').val() == ""){
            alert('Vui lòng nhập người giao');
            return
        }
        if($('#Address').val() == ""){
            alert('Vui lòng nhập địa chỉ NCC');
            return
        }
        if($('#PhoneNumber').val() == ""){
            alert('Vui lòng nhập SĐT');
            return
        }
        if($('#Email').val() == ""){
            alert('Vui lòng nhập Email');
            return
        }
        if($('#CreateAt').val() == ""){
            alert('Vui lòng nhập ngày lập');
            return
        }
        if(listProduct.size == 0){
            alert('Hóa đơn nhập phải có sản phẩm!!!');
            return
        }
        arrayProduct = []
        
        for (const [key, value] of listProduct) {
            arrayProduct.push(value);
        }
        const data = {
            _token: $('input[name="_token"]').get(0).value,
            PurchaseId: $('#PurchaseId').val(),
            SupplierId : $('#SupplierId').val(),
            Deliver : $('#Deliver').val(),
            Address : $('#Address').val(),
            PhoneNumber : $('#PhoneNumber').val(),
            Email : $('#Email').val(),
            CreateAt : $('#CreateAt').val(),
            Product : arrayProduct,
            id: $('#id').val()
        }
        $.post('/purchase/SubmitEditPurchase',data,function(res){
            if (res == 1) {
                alert("Sửa phiếu nhập thành công ");
                window.location='/purchase/ListPurchase';
            } else {
                alert("Sửa phiếu nhập không thành công");
            }
        })
    });
    function updateProductDetail(id){
        isUpdate = true;
        var product = listProduct.get(`${id}`);
        imeiCurrent = product.IMEI;
        idproduct = product.ProductId;
        $("#Product").val(idproduct);
        var html = ""
            for (let index = 0; index < product.IMEI.length; index++) {
                html+="<div class= 'col-lg-2'><input type='text' name='"+idproduct+"[]'' id='IMEI' value='"+product.IMEI[index]+"' class='IMEI'></div>";
            }
            $('#trIMEI').html(html)
        $.ajax({
        url: "/GetInfoProduct?id=" + idproduct,
        method: "GET",
        success: function (res) {
            res = JSON.parse(res);
            $('#PeriodOfGuarantee').val(res.PeriodOfGuarantee);
            $('#Quantity').val(product.Quantity);
            $('#Price').val(product.Price);
            $('#PriceSale').val(res.Price);
        },
        error: function () {
            console.log("Load api get thất bại");
        }
        });
        $('#btnAdd').val('Sửa')
    }
    function deleteProductDetail(id){
        listProduct.delete(`${id}`);
        html = ``;
        total = 0;
        for (const [key, value] of listProduct) {
            html+=` <tr class="deleleProductDetail" data-id="${key}">
                    <td>${key}</td>
                    <td>${value.ProductName}</td>
                    <td>${value.Quantity}</td>
                    <td>${value.Price}</td>
                    <td>${value.Quantity * value.Price}</td>
                    <td>${value.IMEI.toString()}</td>
                    <td>${value.PeriodOfGuarantee}th</td>
                    <td>
                        <a href="javascript:;" style="color:green;font-size:14px" onclick="updateProductDetail(${key})">Sửa</a>
                        <a href="javascript:;" style="color:red;font-size:14px" onclick="deleteProductDetail(${key})">Xóa</a>
                    </td>
                </tr>`
            total+=value.Quantity * value.Price;
        }
        html+=` <tr class="deleleProductDetail" data-id="">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><div style="color:red;font-size:16px"><strong>Tổng</strong></div></td>
                    <td><div style="color:red;font-size:16px"><strong>${total}</strong><div></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>`
        $('.deleleProductDetail').remove();
        $('#renderProductDetail').after(html);
    }

     $("#Purchase").validate({
			rules: {
				IMEI: {
                    required: true,
                    minlength: 6
                }
			},
			messages: {
				IMEI: {
					required: "IMEI không được để trống",
                    minlength: "IMEI phải từ 6 kí tự trở lên"
				},
			}
		});
    $(document).on("click", "#show-transaction", function () {
    var id = $(this).attr("name");
    $.ajax({
        url: "/GetPurchaseDetailAdmin/" + id,
        method: "GET",
        success: function (res) {
            $(".modal-body").html(res);
        },
        error: function () {
            console.log("Load api get thất bại");
        }
    });
});
</script>
@endsection