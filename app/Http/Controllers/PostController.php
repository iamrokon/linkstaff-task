<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Post;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    public function store(Request $request)
    {
        // Post validation start
        $rules = [
            'title' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->getMessageBag()->all());
        }
        // Post validation end

        // Post saving start
        $user = auth()->user();
        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->user_id = $user->id;
        $post->save();
        // Post saving end

        return response()->json([
            'message' => 'Post Created'
        ]);
    }

    public function storePostByPage(Request $request, $pageId)
    {
        // Post validation by page start
        $rules = [
            'title' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->getMessageBag()->all());
        }
        // Post validation by page end

        // Post saving by page start
        $user = auth()->user();
        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->page_id = $pageId;
        $post->user_id = $user->id;
        $post->save();
        // Post saving by page end

        return response()->json([
            'message' => 'Post Created for page'
        ]);
    }
}
