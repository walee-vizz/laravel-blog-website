@props(['post'])
<div {{ $attributes }}>
    <a wire:navigate href="{{ route('posts.show', $post->slug) }}">
        <div>
            <img class="rounded-xl object-cover" src="{{ $post->getThumbnailImage() }}" alt="Thumbnail" style="width: 470px;height: 270px;">
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
                <x-posts.category-badge :category="$category" />
            @endif
            <p class="text-gray-500 text-sm">{{ $post->published_at }}</p>
        </div>
        <a wire:navigate href="{{ route('posts.show', $post->slug) }}"
            class="text-xl font-bold text-gray-900">{{ $post->title }}</a>
    </div>
</div>
