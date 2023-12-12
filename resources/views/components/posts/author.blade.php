@props(['author', 'size'])

@php

    $image_size = match ($size) {
        'xs' => 'w-7 h-7',
        'sm' => 'w-9 h-9',
        'md' => 'w-10 h-10',
        'lg' => 'w-14 h-14',
        default => 'w-10 h-10'
    };

    $text_size = match ($size) {
        'xs' => 'text-xs',
        'sm' => 'text-sm',
        'md' => 'text-base',
        'lg' => 'text-lg',
        default => 'text-base'
    }
@endphp

<img class="{{ $image_size }} rounded-full mr-3" src="{{ $author->profile_photo_url }}" alt="avatar">
<span class="mr-1 {{ $text_size }}">{{ $author->name }}</span>
