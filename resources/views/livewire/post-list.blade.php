<div class=" px-3 lg:px-7 py-6">
    <div class="flex justify-between items-center border-b border-gray-100">
        <div class="text-gray-600">
            @if ($this->currentCategory || $search)
                <button wire:click="clearFilters()"
                    class="px-2 rounded-full
                     hover:text-gray-600 focus:outline-none"
                    aria-label="Close">
                    X
                </button>
            @endif
            @if ($this->currentCategory)
                <x-badge wire:navigate
                    href="{{ route('posts.index', ['category' => $this->currentCategory->slug]) }}"
                    text_color="{{ $this->currentCategory->text_color }}"
                    bg_color="{{ $this->currentCategory->bg_color }}">
                    {{ $this->currentCategory->title }}
                </x-badge>
            @endif
            @if ($search)
                Containing: "<strong>{{ $search }}</strong>"
            @endif

        </div>
        <div class="flex items-center space-x-4 font-light ">
            {{-- <x-checkbox wire:model.live="popular"/>
            <x-label> Popular </x-label> --}}

            <button key='565' class="{{ $sort === 'desc' ? 'text-gray-900 border-b border-gray-700' : 'text-gray-500' }} py-4"
                wire:click="setSort('desc')">Latest</button>
            <button key='997' class=" py-4 {{ $sort === 'asc' ? 'text-gray-900 border-b border-gray-700' : 'text-gray-500' }}"
                wire:click="setSort('asc')">Oldest</button>
        </div>
    </div>
    <div class="py-4">
        @foreach ($this->posts as $post)
            <x-posts.post-item :key="$post->id" :post="$post" />
        @endforeach
    </div>
    <div class="my-3">
        {{ $this->posts->onEachSide(1)->links() }}
    </div>
</div>
