<?php

namespace App\Livewire;

use App\Models\Category;
use App\Models\Post;
use Livewire\Component;
use Livewire\Attributes\Computed;
use Livewire\Attributes\On;
use Livewire\Attributes\Url;
use Livewire\WithPagination;

class PostList extends Component
{
    use WithPagination;
    #[Url()]
    public $sort = 'desc';
    #[Url()]
    public $search = '';

    #[Url()]
    public $category = '';

    #[On('search')]
    public function updateSearch($search)
    {

        $this->search = $search;
    }

    public function clearFilters(){
        $this->search = '';
        $this->category = '';
        $this->resetPage();
    }


    public function setSort($sort)
    {
        $this->sort = ($sort === 'desc') ? 'desc' : 'asc';
    }

    #[Computed()]
    public function posts()
    {
        return Post::published()
            ->where('title', 'LIKE', "%$this->search%")
            ->when($this->currentCategory, function($query){
                $query->withCategory($this->category);
            })
            ->orderBy('published_at', $this->sort)
            ->paginate(4);
    }

    #[Computed()]
    public function currentCategory(){
        return Category::where('slug', $this->category)->first();
    }
    public function render()
    {
        return view('livewire.post-list');
    }
}
