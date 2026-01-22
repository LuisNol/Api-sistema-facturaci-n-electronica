<?php

namespace App\Http\Controllers\Sale;

use Carbon\Carbon;
use App\Models\Sale\Sale;
use Illuminate\Http\Request;
use App\Models\Sale\SalePayment;
use App\Http\Controllers\Controller;

class SalePaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $sale_payment = SalePayment::create([
            "sale_id" => $request->sale_id,
            "method_payment" => $request->method_payment,
            "amount" => $request->amount,
            "date_payment" => $request->date_payment,
        ]);

        $sale = Sale::findOrFail($request->sale_id);

        $sale->update([
            "debt" => $sale->debt - $sale_payment->amount, // MONTO ADEUDADO
            "paid_out" => $sale->paid_out + $sale_payment->amount, // MONTO PAGADO
        ]);
        $state_payment = $sale->state_payment;
        if($sale->debt == 0){
            $state_payment = 3;
        }

        $sale->update([
            "state_payment" => $state_payment,
        ]);

        return response()->json([
            "payment" => [
                "id" => $sale_payment->id,
                "method_payment" =>  $sale_payment->method_payment,
                "amount" =>  $sale_payment->amount,
                "date_payment"  => $sale_payment->date_payment ? Carbon::parse($sale_payment->date_payment)->format("Y-m-d") : NULL,
            ],
            "code" => 200,
            "message" => "El pago se ha registrado correctamente",
            "payment_total" => $sale->paid_out,
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $sale_payment = SalePayment::findOrFail($id);
        $sale = $sale_payment->sale;
        $sale_payment->delete();

        $sale->update([
            "paid_out" => ($sale->paid_out) - $sale_payment->amount, // MONTO PAGADO
            "debt" => ($sale->debt + $sale_payment->amount), // MONTO ADEUDADO
        ]);

        $state_payment = 2;
        if($sale->paid_out == 0){
            $state_payment = 1;
        }
        $sale->update([
            "state_payment" => $state_payment,
        ]);

        return response()->json([
            "code" => 200,
            "message" => "El pago se ha eliminado",
            "sale_payment_id" => $id,
        ]);

    }
}
