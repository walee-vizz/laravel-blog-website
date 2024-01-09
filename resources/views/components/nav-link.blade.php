@props(['active', 'navigate'])

@php
    $classes = $active ?? false ? 'inline-flex items-center' : 'group/navigation-section-link block transition duration-300 rounded-lg px-4 py-3 font-display bg-merino/70 dark:bg-dolphin/20 font-semibold text-hurricane dark:text-merino hover:text-[#403b3b] hover:bg-merino dark:hover:bg-dolphin/30 dark:hover:text-white';
@endphp

<a {{ $navigate ?? true ? 'wire:navigate' : '' }} {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>
