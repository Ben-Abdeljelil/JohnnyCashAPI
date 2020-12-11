<?php

namespace App\Http\Controllers;

use App\Models\JohnnyOrderLog;
use Illuminate\Http\Request;
use DB;

use Laravel\Lumen\Routing\Controller as BaseController;

class JohnnyCashController extends BaseController
{
    /**
     * @OA\Info(
     *   title="JohnnyCash API",
     *   version="1.0",
     *   @OA\Contact(
     *     name="Aicha BEN ABDELJELIL",
     *     email="benabdeljelilaicha@gmail.com",
     *   )
     * )
     */
     /**
     * @OA\Get(
     *     path="/api/topSellingProducts",
     *     tags={"Get top Selling products"},
     *     @OA\Parameter(
     *         name="startDate",
     *         in="query",
     *         description="2019-09-01",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *     @OA\Parameter(
     *         name="endDate",
     *         in="query",
     *         description="2019-09-02",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *     @OA\Response(
     *         response="200",
     *         description="Returns top Selling products",
     *         @OA\JsonContent(
     *              type="array",
     *              @OA\Items(
     *                  @OA\Property(property="skuId", type="integer"),
     *                  @OA\Property(property="totalQuantity", type="integer")
     *              )
     *         )
     *     ),
     * )
     */
    public function getTopSellingProducts(Request $request) {
        $this->validate($request, [
            'startDate' => 'required|date|date_format:Y-m-d',
            'endDate' => 'required|date|date_format:Y-m-d'
        ]);
        $topSellingProducts = JohnnyOrderLog::select(
            "johnnyorderlog.skuId",
            "johnnysku.name as skuName",
            DB::raw('count(johnnyorderlog.quantity) as totalQuantity')
        )->leftjoin('johnnysku', 'johnnyorderlog.skuId', '=', 'johnnysku.id');
        if ($request['startDate'] == $request['endDate']) {
            $topSellingProducts = $topSellingProducts->where('time_created', "like", "%" . $request['endDate'] . "%");
        } else {
            $topSellingProducts = $topSellingProducts->where('time_created', '>=', $request['startDate'])
                                                    ->where('time_created', '<=', $request['endDate']);
        }
        $topSellingProducts = $topSellingProducts->groupBy('johnnyorderlog.skuId')
                                ->orderBy('totalQuantity', 'desc')
                                ->get();
        
        return response()->json($topSellingProducts);
    }
}
