<?php


namespace App\Http\Controllers;

use App\Models\Configsite;
use App\Models\Attributevalue;
use App\Models\User;
use App\Models\Product;
use App\Models\Article;
use App\Models\Attribute;
use App\Models\Brand;
use App\Models\Category;
use App\Models\FeedBack;
use App\Models\Order;
use App\Models\Orderdetail;
use App\Models\Slider;
use Carbon\Carbon;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Polyfill\Intl\Idn\Resources\unidata\Regex;

class ReportController extends Controller
{
    public function StockSumary(Request $request){
        if(session('admin')==null||session('admin')->RoleId!=12){
            return redirect('admin');
        }
        $pageCurrent = 1;
        $whereClause = " 1=1 ";
        $request = $request->all();
        if(array_key_exists("pageCurrent",$request))
            $pageCurrent = $request["pageCurrent"];
        $catId = 0;
        if(array_key_exists("catId",$request)&&$request["catId"]!=""){
            $catId = $request["catId"];
            $whereClause .= "and CategoryId = {$catId} ";
        }
        $whereOrder = "";
        $wherePurchase = "";
        $dateFrom = "";
        if(array_key_exists("dateFrom",$request)&&$request["dateFrom"]!=""){
            $dateFrom = Carbon::createFromFormat('Y-m-d', $request["dateFrom"]);
            $whereOrder.=" and Orders.CreateAt > '{$dateFrom->format('Y-m-d')}'";
            $wherePurchase.=" and Purchase.CreateAt > '{$dateFrom->format('Y-m-d')}'";
        }
        $dateTo = "";
        if(array_key_exists("dateTo",$request)&&$request["dateTo"]!=""){
            $dateTo = Carbon::createFromFormat('Y-m-d', $request["dateTo"]);
            $whereOrder.=" and Orders.CreateAt < '{$dateTo->format('Y-m-d')}'";
            $wherePurchase.=" and Purchase.CreateAt < '{$dateTo->format('Y-m-d')}'";
        }
        $category = Category::get();
        $product = Product::leftJoin(DB::raw("(select * from OrderDetail where OrderId in (select OrderId from Orders where Status = 18 {$whereOrder})) a"),"a.ProductId","=", "Product.ProductId")
        ->LeftJoin(DB::raw("(select ProductId,sum(ifnull(Quantity,0)) as SoLuongNhap, sum(ifnull(Quantity,0)*ifnull(Price,0)) as TienNhap from PurchaseDetail where PurchaseId in (select PurchaseId from Purchase where Status = 34 {$wherePurchase}) group by ProductId)b"),"b.ProductId","=", "Product.ProductId")
        ->selectRaw('ifnull(sum(a.Quantity),0) as SoLuongXuat,ifnull(sum(a.Price*a.Quantity*(1-a.Discount/100)),0) as TienXuat,
        ifnull(b.SoLuongNhap,0) as SoLuongNhap,ifnull(b.TienNhap,0) as TienNhap,
        Product.ProductId, Product.ShortName, Product.Name, Product.Url,Product.BrandId, Product.Price, Product.Discount, Product.Image')
        ->GroupByRaw('Product.ProductId, Product.ShortName, Product.Name, Product.Url,Product.BrandId, Product.Price, Product.Discount, Product.Image,b.SoLuongNhap,b.TienNhap')
        ->whereRaw($whereClause);
        $SoLuongNhap = $product->get()->Sum("SoLuongNhap");
        $SoLuongXuat = $product->get()->Sum("SoLuongXuat");
        $TienNhap = $product->get()->Sum("TienNhap");
        $TienXuat = $product->get()->Sum("TienXuat");
        $count = $product->get()->count();
        $page = ceil($count/5);
        $product = $product->skip(($pageCurrent - 1) * 5)->take(5)->get();
        return view("report.StockSumary",[
            "dateFrom"=>$dateFrom,
            "product"=>$product,
            "dateTo"=>$dateTo,
            "category"=>$category,
            "catId"=>$catId,
            "page"=>$page,
            "count"=>$count,
            "pageCurrent"=>$pageCurrent,
            "SoLuongNhap"=>$SoLuongNhap,
            "SoLuongXuat"=>$SoLuongXuat,
            "TienNhap"=>$TienNhap,
            "TienXuat"=>$TienXuat,
        ]);
    }

    public function CustomerSumary(Request $request){
        if(session('admin')==null||session('admin')->RoleId!=12){
            return redirect('admin');
        }
        $pageCurrent = 1;
        $whereClause = " Orders.Status = 18 ";
        $request = $request->all();
        if(array_key_exists("pageCurrent",$request))
            $pageCurrent = $request["pageCurrent"];
        $catId = 0;
        if(array_key_exists("catId",$request)&&$request["catId"]!=""){
            $catId = $request["catId"];
            $whereClause .= "and CategoryId = {$catId} ";
        }
        $dateFrom = "";
        if(array_key_exists("dateFrom",$request)&&$request["dateFrom"]!=""){
            $dateFrom = Carbon::createFromFormat('Y-m-d', $request["dateFrom"]);
            $whereClause.=" and Orders.CreateAt > '{$dateFrom->format('Y-m-d')}'";
        }
        $dateTo = "";
        if(array_key_exists("dateTo",$request)&&$request["dateTo"]!=""){
            $dateTo = Carbon::createFromFormat('Y-m-d', $request["dateTo"]);
            $whereClause.=" and Orders.CreateAt < '{$dateTo->format('Y-m-d')}'";
        }
        $category = Category::get();

        $user = Order::Join("OrderDetail","Orders.OrderId","=","OrderDetail.OrderId")
        ->Join("Users","Orders.UserId","=","Users.UserId")
        ->selectRaw('ifnull(sum(Quantity),0) as SoLuongMua,ifnull(sum(Price*Quantity*(1-Discount/100)),0) as Chitieu,
        Users.UserId, Users.Name, Users.Address, Users.PhoneNumber, Users.Email')
        ->GroupByRaw(' Users.UserId, Users.Name, Users.Address, Users.PhoneNumber, Users.Email')
        ->whereRaw($whereClause)->orderBy("Chitieu","desc");

        $SoLuongMua = $user->get()->Sum("SoLuongMua");
        $Chitieu = $user->get()->Sum("Chitieu");
        $count = $user->get()->count();
        $page = ceil($count/5);
        $user = $user->skip(($pageCurrent - 1) * 5)->take(5)->get();
        return view("report.CustomerSumary",[
            "dateFrom"=>$dateFrom,
            "user"=>$user,
            "dateTo"=>$dateTo,
            "category"=>$category,
            "catId"=>$catId,
            "page"=>$page,
            "count"=>$count,
            "pageCurrent"=>$pageCurrent,
            "SoLuongMua"=>$SoLuongMua,
            "Chitieu"=>$Chitieu
        ]);
    }
    public function EmployeeSumary (Request $request){
        if(session('admin')==null||session('admin')->RoleId!=12){
            return redirect('admin');
        }
        $pageCurrent = 1;
        $whereClause = " (users.roleId = 12 or users.roleId = 13) and Orders.Status = 18";
        $request = $request->all();
        if(array_key_exists("pageCurrent",$request))
            $pageCurrent = $request["pageCurrent"];
        $catId = 0;
        if(array_key_exists("catId",$request)&&$request["catId"]!=""){
            $catId = $request["catId"];
            $whereClause .= "and CategoryId = {$catId} ";
        }
        $dateFrom = "";
        if(array_key_exists("dateFrom",$request)&&$request["dateFrom"]!=""){
            $dateFrom = Carbon::createFromFormat('Y-m-d', $request["dateFrom"]);
            $whereClause.=" and Orders.CreateAt > '{$dateFrom->format('Y-m-d')}'";
        }
        $dateTo = "";
        if(array_key_exists("dateTo",$request)&&$request["dateTo"]!=""){
            $dateTo = Carbon::createFromFormat('Y-m-d', $request["dateTo"]);
            $whereClause.=" and Orders.CreateAt < '{$dateTo->format('Y-m-d')}'";
        }
        $category = Category::get();

        $user = Order::LeftJoin("OrderDetail","Orders.OrderId","=","OrderDetail.OrderId")
        ->RightJoin("Users","Orders.EmployeeId","=","Users.UserId")
        ->selectRaw('ifnull(sum(ifnull(Quantity,0)),0) as SoLuongBan,ifnull(sum(ifnull(Price,0)*ifnull(Quantity,0)*(1-ifnull(Discount,0)/100)),0) as DoanhThu,
        Users.UserId, Users.Name, Users.Address, Users.PhoneNumber, Users.Email')
        ->GroupByRaw(' Users.UserId, Users.Name, Users.Address, Users.PhoneNumber, Users.Email')
        ->whereRaw($whereClause)->orderBy("DoanhThu","desc");

        $SoLuongBan = $user->get()->Sum("SoLuongBan");
        $DoanhThu = $user->get()->Sum("DoanhThu");
        $count = $user->get()->count();
        $page = ceil($count/5);
        $user = $user->skip(($pageCurrent - 1) * 5)->take(5)->get();
        return view("report.EmployeeSumary ",[
            "dateFrom"=>$dateFrom,
            "user"=>$user,
            "dateTo"=>$dateTo,
            "category"=>$category,
            "catId"=>$catId,
            "page"=>$page,
            "count"=>$count,
            "pageCurrent"=>$pageCurrent,
            "SoLuongBan"=>$SoLuongBan,
            "DoanhThu"=>$DoanhThu
        ]);
    }
    public function RevenueByIndustry(Request $request){
        if(session('admin')==null||session('admin')->RoleId!=12){
            return redirect('admin');
        }
        $pageCurrent = 1;
        $whereClause = " Orders.Status = 18 ";
        $request = $request->all();
        if(array_key_exists("pageCurrent",$request))
            $pageCurrent = $request["pageCurrent"];
        $catId = 0;
        if(array_key_exists("catId",$request)&&$request["catId"]!=""){
            $catId = $request["catId"];
            $whereClause .= "and CategoryId = {$catId} ";
        }
        $dateFrom = "";
        if(array_key_exists("dateFrom",$request)&&$request["dateFrom"]!=""){
            $dateFrom = Carbon::createFromFormat('Y-m-d', $request["dateFrom"]);
            $whereClause.=" and Orders.CreateAt > '{$dateFrom->format('Y-m-d')}'";
        }
        $dateTo = "";
        if(array_key_exists("dateTo",$request)&&$request["dateTo"]!=""){
            $dateTo = Carbon::createFromFormat('Y-m-d', $request["dateTo"]);
            $whereClause.=" and Orders.CreateAt < '{$dateTo->format('Y-m-d')}'";
        }
        $category = Category::get();

        $cat = Product::Join(DB::raw("(select * from OrderDetail where OrderId in (select OrderId from Orders where {$whereClause})) a"),"a.ProductId","=", "Product.ProductId")
        ->RightJoin("Category","Product.CategoryId","=","Category.CategoryId")
        ->selectRaw('ifnull(sum(a.Quantity),0) as SoLuongBan,ifnull(sum(a.Price*a.Quantity*(1-a.Discount/100)),0) as DoanhThu,
        Category.CategoryId, Category.Name, Category.Description')
        ->GroupByRaw('Category.CategoryId, Category.Name, Category.Description')
        ->orderBy("DoanhThu","desc");

        $SoLuongBan = $cat->get()->Sum("SoLuongBan");
        $DoanhThu = $cat->get()->Sum("DoanhThu");
        $count = $cat->get()->count();
        $page = ceil($count/5);
        $cat = $cat->skip(($pageCurrent - 1) * 5)->take(5)->get();
        return view("report.RevenueByIndustry",[
            "dateFrom"=>$dateFrom,
            "cat"=>$cat,
            "dateTo"=>$dateTo,
            "category"=>$category,
            "catId"=>$catId,
            "page"=>$page,
            "count"=>$count,
            "pageCurrent"=>$pageCurrent,
            "SoLuongBan"=>$SoLuongBan,
            "DoanhThu"=>$DoanhThu
        ]);
    }
}