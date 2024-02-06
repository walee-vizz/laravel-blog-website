@props(['title'])
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> {{ isset($title) ? $title . ' - ' : '' }}{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="{{ asset('storage/logos/logo-voilet-transparent.png') }}">
    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        /* Apply styling for the black box */
        pre {
            background-color: #000;
            color: #fff;
            padding: 10px;
            overflow-x: auto;
            /* Enable horizontal scrolling */
            border-radius: 5px;
            /* font-size: small; */

        }

        /* Optional: Style the code inside the black box */
        code {
            font-family: 'Courier New', monospace;
        }

        /* Ads Terra Css */

        .mobileShow {display: none;}

            /* Smartphone Portrait and Landscape */
            @media only screen
            and (min-device-width : 320px)
            and (max-device-width : 480px){
                .mobileShow {display: inline;}
            }
            .mobileHide { display: inline; }

            /* Smartphone Portrait and Landscape */
            @media only screen
            and (min-device-width : 320px)
            and (max-device-width : 480px){
            .mobileHide { display: none;}
            }
    </style>
    <!-- Styles -->
    @livewireStyles
</head>

<body class="font-sans antialiased">
    <x-banner />

    @include('partials.header')
    @yield('hero')
    <main class="container mx-auto px-5 flex flex-grow">
        {{ $slot }}
    </main>

    @include('partials.footer')

    @stack('modals')
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" crossorigin="anonymous"></script>

    @livewireScripts
    <script>
        $('pre').each(function() {
            $(this).html('<code>' + $(this).html() + '</code>');
        })

        $('article').each(function(){
            $(this).find('h1, h2, h3').each(function(){
                $(this).addClass('text-lg font-semibold text-gray-900 mb-3 my-3');
            })
        })

    </script>
    <script type='text/javascript' src='//pl22418161.toprevenuegate.com/e0/be/b9/e0beb9e3920fdbdc10b2583a589214f6.js'></script>
</body>

</html>
