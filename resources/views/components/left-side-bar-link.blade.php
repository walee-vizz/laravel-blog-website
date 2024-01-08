@props(['text', 'icon'])
<li class="border-rounded" style="background-color: #f6ece44f">
    <a href="" {!! $attributes->merge([
        'class' =>
            'group/navigation-section-link block transition duration-300 rounded-lg px-4 py-3 font-display bg-merino/70 dark:bg-dolphin/20 font-semibold text-hurricane dark:text-merino hover:text-[#403b3b] hover:bg-merino dark:hover:bg-dolphin/30 dark:hover:text-white ',
    ]) !!} style="background-color: #f6ece44f">
        {!! $icon !!}
        <h2
            class="flex items-center gap-4 transition-transform duration-300 group-hover/navigation-section-link:translate-x-1">
            <span>{{ $text }}</span>
        </h2>
    </a>
</li>
