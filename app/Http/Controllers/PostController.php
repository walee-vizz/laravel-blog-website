<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // dd(Post::take(5)->get());
        $categories = Cache::remember('categories', Carbon::now()->addDay(), function () {
            return Category::whereHas('posts', function ($query) {
                $query->published();
            })->take(10)->get();
        });
        return view('posts.index', [
            'categories' => $categories,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post)
    {
        $categories = Cache::remember('categories', Carbon::now()->addDay(), function () {
            return Category::whereHas('posts', function ($query) {
                $query->published();
            })->take(10)->get();
        });
        $data = [
            'post' => $post,
            'categories' => $categories,
        ];

        return view('posts.show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        //
    }
}
