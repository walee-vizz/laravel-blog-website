<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Support\Str;
use PhpParser\Node\Expr\Cast\String_;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Spatie\Activitylog\Traits\LogsActivity;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'user_id',
        'image',
        'title',
        'slug',
        'body',
        'published_at',
        'featured',
    ];
    public function scopePublished($query)
    {

        $query->where('published_at', '<=', Carbon::now());
    }

    public function scopeFeatured($query)
    {
        $query->where('featured', true);
    }

    public function scopeWithCategory($query, $category)
    {
        $query->whereHas('categories', function ($query) use ($category) {
            $query->where('slug', $category);
        });
    }
    public function scopePopular($query)
    {
        $query->withCount('likes')
            ->orderBy('likes_count', 'DESC');
    }
    public function scopeSearch($query, $search = '')
    {
        $query->where('title', 'LIKE', "%$search%")->orWhere('slug', 'LIKE', "%$search%");
    }
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    protected $casts = [
        'published_at' => 'datetime',
    ];


    public function getReadingTime()
    {
        $mins = round(str_word_count($this->body) / 250);
        return $mins < 1 ? 1 : $mins;
    }

    public function getExcerpt()
    {
        // return Str::limit(strip_tags($this->body), 100, '...');
        // Remove HTML tags and convert HTML entities to their corresponding characters
        $plainText = html_entity_decode(strip_tags($this->body));

        // Replace multiple consecutive spaces with a single space
        $plainText = preg_replace('/\s+/', ' ', $plainText);

        // Trim the text to 100 characters and add '...' at the end
        $excerpt = Str::limit($plainText, 100, '...');

        return $excerpt;
    }

    public function getThumbnailImage()
    {
        $isUrl = str_contains($this->image, 'http');

        return $isUrl ? $this->image : asset('storage/' . $this->image);
    }


    public function likes()
    {
        return $this->BelongsToMany(User::class, 'post_like')->withTimestamps();
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
