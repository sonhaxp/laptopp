<?php

namespace App\Exports;

use App\Models\Configsite;
use App\Models\Order;
use App\Models\Orderdetail;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class InvoiceExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */

    protected $id;

    function __construct($id) {
            $this->id = $id;
    }
    public function view(): View
    {
        $order = Order::where("OrderId","=",$this->id)->first();
        $orderDetail = Orderdetail::where("OrderId","=",$this->id)->get();
        $configSite = Configsite::first();
        return view('cart.invoices', [
            'order' => $order,
            'orderDetail' => $orderDetail,
            'configSite' => $configSite,
        ]);
    }
}
