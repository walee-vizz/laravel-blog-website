<div x-data="{
    query: '{{ request('search', '') }}'
}" x-on:keyup.enter="$dispatch('search', {
    search : query
})" id="search-box">
    <h3 class="text-lg font-semibold text-gray-900 mb-3">Search</h3>
    <div class="relative my-3">
        <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                fill="none" viewBox="0 0 20 20">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
            </svg>
        </div>
        <input x-model="query"
            class="block w-full border-r-0 border-t-0 p-4 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-yellow-500 focus:border-yellow-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-yellow-500 dark:focus:border-yellow-500"
            placeholder="Search Posts..." x-bind:value="query">
        {{-- <button type="submit" >Search</button> --}}
        <x-button x-on:click="$dispatch('search', {
            search:query
        })" class="text-white absolute end-2.5 bottom-2.5 bg-black-700 hover:bg-black-800 focus:ring-4 focus:outline-none focus:ring-white-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-black-600 dark:hover:bg-black-700 dark:focus:ring-black-800" >Search</x-button>
    </div>
    {{-- <div class="flex">
        <div class="w-96 flex rounded bg-gray-100 py-2 px-3 mb-3 items-center">
            <span><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="w-6 h-6 text-gray-500">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
                </svg>
            </span>
            <input
                class="w-96 ml-1 bg-transparent focus:outline-none focus:border-none focus:ring-0 outline-none border-none text-xs text-gray-800 placeholder:text-gray-400"
                type="text" placeholder="Search...">
        </div>

    </div> --}}
</div>
