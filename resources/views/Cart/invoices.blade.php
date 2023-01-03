<html>
<head>
<title>Hóa đơn bán</title>
</head>

<body>
<table border="1" cellpadding="0px" cellspacing="0px" width="100%">
    <thead>
    <tr>
        <td width="100%" colspan="3" align="left" style="text-align: 
left;font-size:11pt">{{ $configSite->Name }}</td>
    </tr>
    <tr>
        <td width="100%" colspan="3" align="left" style="text-align: 
left;font-size:11pt">{{ $configSite->Place }}</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td width="100%" colspan="3" align="center" style="text-align: 
center;font-weight: bold;font-size:18pt">Hóa đơn bán hàng</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td width="100%" colspan="3" align="center" style="text-align: 
center;font-size:12pt">{{ $order->CreateAt->format('d-m-Y') }}</td>
        <td colspan="2" style="text-align: center; font-weight: bold;">Số: {{ $order->OrderId }}</td>
    </tr>
    <tr></tr>
    <tr>
        <td width="100%" colspan="2" align="left" style="text-align: 
left;font-size:11pt">Người nhận:</td>
        <td width="100%" colspan="4" align="left" style="text-align: 
        left;font-size:11pt">{{ $order->Receiver }}</td>
    </tr>
    <tr>
        <td width="100%" colspan="2" align="left" style="text-align: 
        left;font-size:11pt">Địa chỉ:</td>
        <td width="100%" colspan="4" align="left" style="text-align: 
        left;font-size:11pt">{{ $order->Address }}</td>
    </tr>
    <tr>
        <td width="100%" colspan="2" align="left" style="text-align: 
        left;font-size:11pt">Số điện thoại:</td>
        <td width="100%" colspan="4" align="left" style="text-align: 
        left;font-size:11pt">{{ $order->PhoneNumber }}</td>
    </tr>
    <tr></tr>
    <tr>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">STT</td>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">Mã hàng</td>
    <td style="text-align: center; width: 300pt;font-weight: bold;background-color: rgb(151, 231, 255);">Tên hàng hóa</td>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">Đơn giá</td>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">Số lượng</td>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">Khuyến mãi</td>
    <td style="text-align: center; width: 80pt;font-weight: bold;background-color: rgb(151, 231, 255);">Thành tiền</td>
    </tr>
    </thead>
 <tbody>
    @php
        $total = 0;
    @endphp
    @for ($i = 0; $i < $orderDetail->count(); $i++)
        <tr>
            @php
                $total += $orderDetail[$i]->Price*$orderDetail[$i]->Quantity*(1-$orderDetail[$i]->Discount/100);
            @endphp
            <td style="text-align: center; width: 80pt;">{{$i+1}}</td>
            <td style="text-align: center; width: 80pt;">{{$orderDetail[$i]->ProductId}}</td>
            <td style="text-align: center; width: 300pt;">{{$orderDetail[$i]->Product->ShortName}}</td>
            <td style="text-align: center; width: 80pt;">{{$orderDetail[$i]->Price}}</td>
            <td style="text-align: center; width: 80pt;">{{$orderDetail[$i]->Quantity}}</td>
            <td style="text-align: center; width: 80pt;">{{$orderDetail[$i]->Discount}}</td>
            <td style="text-align: center; width: 80pt;">{{$orderDetail[$i]->Price*$orderDetail[$i]->Quantity*(1-$orderDetail[$i]->Discount/100)}}</td>
        </tr>
    @endfor
        <tr>
            <td colspan="5"></td>
            <td style="text-align: centre; color:red">Tổng tiền:</td>
            <td style="text-align: center;">{{ $total }}</td>
        </tr>
        <tr></tr>
        <tr>
            <td colspan="5"></td>
            <td style="font-style: italic;" colspan="2">Ngày {{ $order->CreateAt->day }} tháng {{ $order->CreateAt->month }} năm {{ $order->CreateAt->year }}</td>
        </tr>
        <tr></tr>
        <tr>
            <td style="text-align: center;font-weight: bold;" colspan="2">Nhân viên</td>
            <td colspan="3"></td>
            <td style="text-align: center;font-weight: bold;" colspan="2">Người nhận</td>
        </tr>
        <tr>
            <td style="text-align: centre;" colspan="2"></td>
            <td style="text-align: centre;" colspan="3"></td>
            <td style="text-align: centre;" colspan="2"></td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="2">{{ session('admin')->Name }}</td>
            <td style="text-align: centre;" colspan="3"></td>
            <td style="text-align: center;" colspan="2"></td>
        </tr>
</tbody>
</table>
</body>
</html>