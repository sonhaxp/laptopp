@extends('shared.admin.layout')
@section('title', 'Sửa sản phẩm')
@section('content')
<h2>Sửa sản phẩm</h2>
<a class="btn quick-link" href="/product/ListProduct"><i class="far fa-list mr-1"></i> Danh sách sản phẩm</a>
<div class="box_content">
    @if ($errors->has('success')==true)
    <div id="Username-error" class="success">{{ $errors->first('success') }}</div>
    @endif
<form action="/product/SubmitUpdateProduct" id="CreateArticle" enctype="multipart/form-data" method="post">        
    @csrf
    <div class="row">
        <div class="col-lg-8">
            <div class="row">
                <div class="col-lg-6">
                    Danh mục sản phẩm
                    <select id="Category" name="Category">
                        <option value="">Chọn danh mục sản phẩm</option>
                        @foreach ($category as $item)
                        <option {{ $item->CategoryId == $product->CategoryId?"selected":"" }} value="{{ $item->CategoryId }}">{{ $item->Name }}</option>     
                        @endforeach
                    </select>
                </div>
                <div class="col-lg-6">
                    Tên sản phẩm
                    <input class="form_control w300" id="Name" name="Name" type="text" value="{{ $product->Name }}"  />
                </div>
                <div class="col-lg-6">
                    Số lượng:
                    <input type="text" name="" id="" value="{{ $product->Quantity }}" readonly>
                </div>
                <div class="col-lg-6">
                    Thời hạn bảo hành
                    <input class="form_control w300" id="PeriodOfGuarantee" name="PeriodOfGuarantee" type="text" value={{ $product->PeriodOfGuarantee }}  />
                </div>
                <div class="col-lg-6">
                    Tên ngắn
                    <input class="form_control w300" id="ShortName" name="ShortName" type="text" value="{{ $product->ShortName }}" />
                </div>
                <div class="col-lg-6">
                    Thương hiệu
                    <select id="Brand" name="Brand">
                        <option value="">Chọn thương hiệu</option>
                        @foreach ($brand as $item)
                        <option {{ $item->BrandId == $product->BrandId?"selected":"" }} value="{{ $item->BrandId }}">{{ $item->brand->Name }}</option>     
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="row">
                <div class="col-lg-3"> </div>
                <div class="col-lg-6"> 
                    <img src="{{ URL::asset($product->Image) }}" width="150px" alt="">
                </div>
                <div class="col-lg-3"> </div>

            </div>
        </div>
        <div class="col-lg-4">
            Giá
            <input class="form_control w300" id="Price" name="Price" type="text" value="{{ $product->Price }}" />
        </div>
        <div class="col-lg-4">
            Giảm giá
            <input class="form_control w300" id="Discount" name="Discount" type="text" value="{{ $product->Discount }}" />
        </div>
        <div class="col-lg-4">
            Hình ảnh
            <input id="Image" name="Image" type="file"/>
            @if ($errors->has('image')==true)
                <label id="image-error" class="error" for="image">{{ $errors->first('image') }}</label>
            @endif
           
        </div>
        <div class="col-lg-4">
            Mô tả
            <input class="form_control w300" id="Description" name="Description" type="textarea"  value="{{ $product->Description }}"/>
        </div>
        <div class="col-lg-4">
           Đường dẫn
           <input class="form_control w300" id="Url" name="Url" type="text" value="{{ $product->Url }}"/>
        </div>
        <div class="col-lg-4">
            Hoạt động
            <input {{ $product->Status==1?"checked":"" }}  id="Active" name="Active" type="checkbox" value="1" />
         </div>
    </div>
    <div><h5>-------------------------------------------------------------------------Thuộc tính--------------------------------------------------------------------</h5></div>
    <div id="listAttribute">
        <div class="row attribute_remove">
            @foreach ($attribute as $item)
            <div class="col-lg-4">
                {{ $item->attribute->Name }}
                <select id="{{ $item->attribute->AttributeId }}" name="{{ $item->attribute->AttributeId }}">
                    <option selected="selected" value="">Chọn giá trị</option>
                    @foreach ($item->Value as $temp)
                    <option  {{$temp->flag == true?"selected":"" }} value="{{ $temp->AttributeValueId }}">{{ $temp->Value }}</option>  
                    @endforeach
                </select>
            </div>
            @endforeach
        </div>
    </div>
    <div><h2><input type="submit" class="btn quick-link" value="Cập nhật"/></h2></div>
    <input type="text" class="btn quick-link" hidden name="ProductId"  id="ProductId" value="{{ $product->ProductId }}" />
    </form>
</div>

<script type="text/javascript">
    $('#Category').on('change', function() {
        $('.attribute_remove').remove();
        $('#Brand').html("");
        if(this.value!=""){
            $.get("/product/attribute/"+this.value, function (data) {
                if (data) {
                    $("#listAttribute").html(data);
                }
            });
            $.get("/product/brandcategory/"+this.value, function (data) {
                if (data) {
                    $("#Brand").html(data);
                }
            });
        }
    });
    $("#CreateArticle").validate({
			rules: {
                Category:{
                    required: true,
                },
				Name: {
                    required: true,
                    minlength: 6
                },
                ShortName: {
                    required: true,
                    minlength: 6
                },
                Brand: {
                    required: true
                },
                Price: {
                    required: true,
                    number: true,
                },
                Discount: {
                    required: true,
                    number: true,
                },
                Description: {
                    required: true,
                    minlength: 6
                },
                Url: {
                    required: true,
                    minlength: 6
                },
                PeriodOfGuarantee: {
                    required: true,
                    number:true
                }
			},
			messages: {
                Category:{
                    required: "Danh mục không được để trống",
                },
				Name: {
					required: "Tên không được để trống",
                    minlength: "Tên khoản phải từ 6 kí tự trở lên"
				},
                ShortName: {
					required: "Tên ngắn không được để trống",
                    minlength: "Tên ngắn phải từ 6 kí tự trở lên"
				},
                Brand: {
					required: "Thương hiệu không được để trống",
				},
                Price: {
					required: "Giá không được để trống",
                    number: "Giá phải là số"
				},
                Discount: {
					required: "Giảm giá không được để trống",
                    minlength: "Giảm giá phải là số"
				},
                Description: {
                    required: "Mô tả không được để trống",
                    minlength: "Mô tả phải từ 6 kí tự trở lên"
                },
				Url: {
					required: "Đường dẫn không được để trống",
					minlength: "Đường dẫn phải từ 6 kí tự trở lên"
				},
			}
		});
</script>
@endsection