<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request)
    {

        return view('home', [
            'featured_posts' => Post::Published()->Featured()->latest('published_at')->take(3)->get(),
            'latest_posts' => Post::take(9)->get(),
        ]);
    }
}
