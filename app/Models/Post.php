<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Storage;
use PhpParser\Node\Expr\Cast\String_;

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
        $query->whereHas('categories', function ($query) use($category) {
            $query->where('slug', $category);
        });

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
        return Str::limit(strip_tags($this->body), 100, '...');
    }

    public function getThumbnailImage(){
        $isUrl = str_contains($this->image, 'http');

        return $isUrl ? $this->image : Storage::disk('public')->url($this->image);
    }


    public function likes(){
        return $this->BelongsToMany(User::class, 'post_like')->withTimestamps();
    }
}
