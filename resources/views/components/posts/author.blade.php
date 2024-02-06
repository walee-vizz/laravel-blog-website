@props(['author', 'size'])

@php

    $image_size = match ($size) {
        'xs' => 'w-7 h-7',
        'sm' => 'w-9 h-9',
        'md' => 'w-10 h-10',
        'lg' => 'w-14 h-14',
        default => 'w-10 h-10',
    };

    $text_size = match ($size) {
        'xs' => 'text-xs',
        'sm' => 'text-sm',
        'md' => 'text-base',
        'lg' => 'text-lg',
        default => 'text-base',
    };
    $profile_image = $author->profile_photo_path ? $author->profile_photo_path : 'user_icon.png';
@endphp
<a href="https://portfolio.neotronicdev.com" class="article-meta flex py-1 text-sm items-center">
    <img class="{{ $image_size }} rounded-full mr-3" src="{{ asset('storage/' . $profile_image) }}" alt="avatar">
    <span class="mr-1 {{ $text_size }}">{{ $author->name }}</span>
</a>
