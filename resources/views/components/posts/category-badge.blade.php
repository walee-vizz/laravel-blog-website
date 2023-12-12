@props(['category'])

<x-badge wire:navigate href="{{ route('posts.index', ['category' => $category->slug]) }}"
    text_color="{{ $category->text_color }}" bg_color="{{ $category->bg_color }}">
    {{ $category->title }}
</x-badge>
