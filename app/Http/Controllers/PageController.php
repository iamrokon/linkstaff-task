<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Page;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    public function store(Request $request)
    {
        // Page validation start
        $rules = [
            'page_name' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->getMessageBag()->all());
        }
        // Page validation end

        // Page saving start
        $user = auth()->user();
        $page = new Page();
        $page->page_name = $request->page_name;
        $page->user_id = $user->id;
        $page->save();
        // Page saving end

        return response()->json([
            'message' => 'Page Created'
        ]);
    }
}
