@extends('shared.admin.layout')
@section('title', 'Thêm sản phẩm')
@section('content')
<h2>Thêm mới sản phẩm</h2>
<a class="btn quick-link" href="/product/ListProduct"><i class="far fa-list mr-1"></i> Danh sách sản phẩm</a>
<div class="box_content">
    @if ($errors->has('success')==true)
    <div id="Username-error" class="success">{{ $errors->first('success') }}</div>
    @endif
<form action="/product/SubmitCreateProduct" id="CreateArticle" enctype="multipart/form-data" method="post">        
    @csrf
    <div class="row">
        <div class="col-lg-4">
            Danh mục sản phẩm
            <select id="Category" name="Category">
                <option selected="selected" value="">Chọn danh mục sản phẩm</option>
                @foreach ($category as $item)
                <option value="{{ $item->CategoryId }}">{{ $item->Name }}</option>     
                @endforeach
            </select>
        </div>
        <div class="col-lg-4">
            Tên sản phẩm
            <input class="form_control w300" id="Name" name="Name" type="text"  />
        </div>
        <div class="col-lg-4">
            Thời hạn bảo hành
            <input class="form_control w300" id="PeriodOfGuarantee" name="PeriodOfGuarantee" type="text"  />
        </div>
        <div class="col-lg-4">
            Tên ngắn
            <input class="form_control w300" id="ShortName" name="ShortName" type="text"  />
        </div>
        <div class="col-lg-4">
            Thương hiệu
            <select id="Brand" name="Brand">
                        
            </select>
        </div>
        <div class="col-lg-4">
            Giá
            <input class="form_control w300" id="Price" name="Price" type="text"  />
        </div>
        <div class="col-lg-4">
            Giảm giá
            <input class="form_control w300" id="Discount" name="Discount" type="text"  />
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
            <input class="form_control w300" id="Description" name="Description" type="text"  />
        </div>
        <div class="col-lg-4">
           Đường dẫn
           <input class="form_control w300" id="Url" name="Url" type="text" />
        </div>
        <div class="col-lg-4">
            Hoạt động
            <input checked="checked" id="Active" name="Active" type="checkbox" value="1" />
         </div>
    </div>
    <div><h5>Thuộc tính-----------------------------------------------</h5></div>
    <div id="listAttribute"></div>
    <h2><input type="submit" class="btn quick-link" value="Thêm mới" /></h2>

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