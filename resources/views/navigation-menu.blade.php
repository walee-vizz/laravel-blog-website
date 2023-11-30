<nav class="flex items-center justify-between py-3 px-6 border-b border-gray-100">
    <div id="nav-left" class="flex items-center">
        <a wire:navigate href="{{ route('home') }}">
            <x-application-mark />
        </a>
        <div class="top-menu ml-10">
            <ul class="flex space-x-4">
                <x-nav-link href="{{ route('home') }}" :active="request()->routeIs('home')">
                    {{ __('Home') }}
                </x-nav-link>
                <x-nav-link href="{{ route('homepage') }}" :active="request()->routeIs('homepage')">
                    {{ __('Home Page') }}
                </x-nav-link>
                <x-nav-link href="{{ route('posts.index') }}" :active="request()->routeIs('posts.index')">
                    {{ __('Blog Page') }}
                </x-nav-link>
            </ul>
        </div>
    </div>
    <div id="nav-right" class="flex items-center md:space-x-6">
        @auth
            @include('partials.header_right_auth')
        @else
            @include('partials.header_right_guest')
        @endauth

    </div>
    </div>
</nav>
