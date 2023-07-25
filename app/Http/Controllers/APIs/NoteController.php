<?php

namespace App\Http\Controllers\APIs;

use App\Constants\MessageConstant;
use App\Http\Responses\BaseHTTPResponse;
use App\Models\Note;
use App\Http\Requests\Note\StoreNoteRequest;
use App\Http\Requests\Note\UpdateNoteRequest;
use App\Repositories\Note\NoteRepository;
use App\Services\Note\NoteService;
use Illuminate\Http\JsonResponse;
use App\Http\Controllers\Controller;
use App\Http\Responses\BaseResponse;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NoteController extends Controller
{
    use BaseResponse;
    public function __construct()
    {
        new NoteService(new NoteRepository());
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request): JsonResponse
    {
        try {
            $data = NoteService::getAllNotes($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$GET_LIST_NOTES_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$GET_LIST_NOTES_FAILED
            );
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\Note\StoreNoteRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreNoteRequest $request): JsonResponse
    {
        try {

            $create = NoteService::createNote($request);
            $data = NoteService::getAllNotes($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$CREATE_NOTE_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$CREATE_NOTE_FAILED
            );
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  Request $request
     * @param  mixed $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, mixed $id): JsonResponse
    {
        try {
            $data = NoteService::getNoteById($id);
            return $this->success(
                $request,
                $data,
                MessageConstant::$GET_DETAIL_NOTE_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$GET_DETAIL_NOTE_FAILED
            );
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\Note\UpdateNoteRequest  $request
     * @param  mixed $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateNoteRequest $request, mixed $id): JsonResponse
    {
        try {
            $note = Note::findOrFail($id);
            if (Auth::user()->id != $note->user_id)
                throw new Exception("User doesn't have permission to edit");
            $update_data = NoteService::updateNote($request, $id);
            $data = NoteService::getAllNotes($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$UPDATE_NOTE_SUCCESS,
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$UPDATE_NOTE_FAILED,
                400,
                'Bad Request'
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  mixed $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, mixed $id): JsonResponse
    {
        try {
            $delete = NoteService::deleteNote($id);
            $data = NoteService::getAllNotes($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$DELETE_NOTE_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$DELETE_NOTE_FAILED
            );
        }
    }
}
