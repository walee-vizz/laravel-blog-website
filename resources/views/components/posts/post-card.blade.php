@props(['post'])
<div {{ $attributes }}>
    <a href="{{ route('posts.show', $post->slug) }}">
        <div>
            <img class="w-full rounded-xl" src="{{ $post->getThumbnailImage() }}">
        </div>
    </a>
    <div class="mt-3">
        <div class="flex items-center mb-2 gap-x-2">
            {{-- <a href="http://127.0.0.1:8000/categories/laravel"
                class="bg-red-600
                text-white
                rounded-xl px-3 py-1 text-sm mr-3">
                Laravel
            </a> --}}
            @if ($category = $post->categories->first())
                <x-badge wire:navigate href="{{ route('posts.index', ['category' => $category->slug]) }}"
                    text_color="{{ $category->text_color }}" bg_color="{{ $category->bg_color }}">
                    {{ $category->title }}
                </x-badge>
            @endif
            <p class="text-gray-500 text-sm">{{ $post->published_at }}</p>
        </div>
        <a href="{{ route('posts.show', $post->slug) }}" class="text-xl font-bold text-gray-900">{{ $post->title }}</a>
    </div>
</div>
