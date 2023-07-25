<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Note extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'text',
        'url',
        'user_id'
    ];

    public $timestamps = true;

    protected $hidden = [
        'otp_email_code',
        'otp_email_expired_at',
    ];
    /**
     * Nhiều ghi chú có thể thuộc sở hữu của một người dùng
     */
    public function User()
    {
        return $this->belongsTo(User::class);
    }
}
