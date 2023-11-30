@props(['active'])

@php
    $classes = $active ?? false ? 'inline-flex items-center' : 'inline-flex items-center hover:text-gray-900 text-sm text-yellow-500';
@endphp

<a wire:navigate {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
