<?php

namespace App\Services\Note;
use App\Http\Requests\Note\StoreNoteRequest;
use App\Http\Requests\Note\UpdateNoteRequest;
use Illuminate\Http\Request;

interface INoteService {
    public static function getAllNotes(Request $request);
    public static function createNote(StoreNoteRequest $request);
    public static function getNoteById($id);
    public static function updateNote(UpdateNoteRequest $request, $id);
    public static function deleteNote($id);

}