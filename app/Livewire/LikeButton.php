<?php

namespace App\Livewire;

use App\Models\Post;
use Livewire\Attributes\Reactive;
use Livewire\Component;

class LikeButton extends Component
{
    // #[Reactive]
    public Post $post;

    public function toggleLike(Post $post)
    {

        if (auth()->guest()) {

            $this->redirect(route('login'), true);
            return;
        }

        $user = auth()->user();

        if ($user->hasLiked($this->post)) {

            $user->likes()->detach($this->post);
            return;
        }

        $user->likes()->attach($this->post);
    }

    public function render()
    {
        return view('livewire.like-button');
    }
}
