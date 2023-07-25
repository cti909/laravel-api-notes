<?php

namespace App\Repositories\Note;

use App\Repositories\BaseRepository;
use App\Models\Note;

class NoteRepository extends BaseRepository implements INoteRepository {

    public function getModel() {
       return Note::class;
    }
    
}