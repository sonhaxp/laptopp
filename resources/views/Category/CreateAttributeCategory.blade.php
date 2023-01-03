@extends('shared.admin.layout')
@section('title', 'Tạo thuộc tính cho danh mục')
@section('content')
<h2>Thêm thuộc tính cho danh mục</h2>
<a class="btn quick-link" href="#list-attribute"><i class="far fa-list mr-1"></i> Danh sách thuộc tính cho danh mục</a>
<div class="box_content px-300">
    @if ($errors->has('success')==true)
    <div id="Username-error" class="success">{{ $errors->first('success') }}</div>
    @endif
    <form action="/category/SubmitAttributeCategory" method="post" id="CreateCategoryForm">        
        @csrf
        <table class="form_table">
                <tbody>
                    <tr>
                        <td class="form_name"><label for="Category">Danh mục</label></td>
                        <td class="form_text">
                            <select id="Category" name="Category">
                                <option selected="selected" value="">Chọn danh mục</option>
                                @foreach ($category as $item)
                                <option value="{{ $item->CategoryId }}">{{ $item->Name }}</option>     
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_name"><label for="Attribute">Thuộc tính</label></td>
                        <td class="form_text">
                            <select id="Attribute" name="Attribute">
                                <option selected="selected" value="">Chọn thuộc tính</option>
                                @foreach ($attribute as $item)
                                <option value="{{ $item->AttributeId }}">{{ $item->Name }}</option>     
                                @endforeach
                            </select>
                            @if ($errors->has('Attribute')==true)
                            <label id="Attribute-error" class="error" for="Attribute">{{ $errors->first('Attribute') }}</label>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td class="form_name"><label for="Active">Hoạt động</label></td>
                        <td class="form_text">
                            <input checked="checked" id="Active" name="Active" type="checkbox" value="1" />
                        </td>
                    </tr>
                    <tr>
                        <td class="form_name"></td>
                        <td class="form_text">
                            <input type="submit" class="btn quick-link" value="Thêm mới">
                        </td>
                    </tr>
                </tbody>
            </table>
    </form>
</div>
<div class="box_content">
    <p>Có tổng số <strong>{{ $categoryattribute->count() }}</strong> thuộc tính cho danh mục</p>
    <table class="list_table tablecenter table-striped" id="list-attribute">
        <tbody>
            <tr>
                <th style="width: 300px">Danh mục</th>
                <th style="width: 300px">Thuộc tính</th>
                <th>Hoạt động</th>
                <th style="width: 100px"></th>
            </tr>
            @foreach ($categoryattribute as $item)
                <tr data-id="{{ $item->CategoryAttributeId }}">
                    <td>
                        {{ $item->category->Name }}
                    </td>
                    <td>
                        {{ $item->attribute->Name }}
                    </td>
                    <td><input {{ $item->Status==1?"checked":"" }} class="check-box" disabled="disabled" type="checkbox" /></td>
                   
                    <td>
                        <a href="/category/UpdateCategory/{{$item->CategoryId }}">Sửa</a>
                        - <a href="javascript:;" onclick="deleteCategory('{{$item->CategoryId}}')" class="red-warring">Xóa</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
<script type="text/javascript">
    $("#CreateCategoryForm").validate({
			rules: {
				Category: {
                    required: true,
                },
                Attribute: {
                    required: true,
                }
			},
			messages: {
				Category: {
					required: "Bạn phải chọn danh mục",
				},
                Attribute: {
					required: "Bạn phải chọn thuộc tính",
				},
			}
		});
    //     function deleteArticleCategories(id) {
    //         let _token = $('input[name="_token"]').get(1).value;
    //         if (confirm("Bạn có chắc chắn xóa Danh mục bài viết này không?")) {
    //             $.post("/article/DeleteArticleCategories", { category: id, _token:_token}, function (data) {
    //                 if (data) {
    //                     alert("Xóa Danh mục bài viết viên thành công");
    //                     $("tr[data-id='" + id + "']").fadeOut();
    //                 } else {
    //                     alert("Không tồn tại Danh mục bài viết viên này");
    //                 }
    //             });
    //         }
    // }
</script>
@endsection