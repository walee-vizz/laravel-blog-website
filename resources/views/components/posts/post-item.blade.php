@props(['post'])
<article class="[&:not(:last-child)]:border-b border-gray-100 pb-10">
    <div class="article-body grid grid-cols-12 gap-3 mt-5 items-start">
        <div class="article-thumbnail col-span-4 flex items-center">
            <a href="{{ route('posts.show', $post->slug) }}">
                <img class="mw-100 mx-auto rounded-xl" src="{{ $post->getThumbnailImage() }}" alt="thumbnail">
            </a>
        </div>
        <div class="col-span-8">
            <div class="article-meta flex py-1 text-sm items-center">
                <img class="w-7 h-7 rounded-full mr-3" src="{{ $post->author->profile_photo_url }}" alt="avatar">
                <span class="mr-1 text-xs">{{ $post->author->name }}</span>
                <span class="text-gray-500 text-xs">.{{ $post->published_at->diffForHumans() }}</span>
            </div>
            <h2 class="text-xl font-bold text-gray-900">
                <a href="{{ route('posts.show', $post->slug) }}">
                    {{ $post->title }}
                </a>
            </h2>

            <p class="mt-2 text-base text-gray-700 font-light">
                {{ $post->getExcerpt() }}
            </p>
            <div class="article-actions-bar mt-6 flex items-center justify-between">
                <div class="flex gap-x-3">
                    @foreach ($post->categories as $category)
                        <x-badge text_color="{{ $category->text_color }}" bg_color="{{ $category->bg_color }}">
                            {{ $category->title }}
                        </x-badge>
                    @endforeach
                    <div class="flex items-center space-x-4">
                        <span class="text-gray-500 text-sm">{{ $post->getReadingTime() }} min read</span>
                    </div>
                </div>
                <div>
                    <livewire:like-button :key="$post->id" :$post />
                </div>
            </div>
        </div>
    </div>
</article>
