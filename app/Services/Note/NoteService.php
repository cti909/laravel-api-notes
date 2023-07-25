<?php

namespace App\Services\Note;

use App\Http\Filters\Note\NoteFilter;
use App\Http\Requests\Note\StoreNoteRequest;
use App\Http\Requests\Note\UpdateNoteRequest;
use App\Repositories\IBaseRepository;
use App\Repositories\Note\InoteRepository;
use Illuminate\Http\Request;

class NoteService implements INoteService
{
    private static $noteRepository;
    private static $filter;
    /**
     * Construct
     */
    public function __construct(InoteRepository $noteRepository)
    {
        self::$noteRepository = $noteRepository;
        self::$filter = new NoteFilter;
    }
    /**
     * Lấy tất cả các record của note có phân trang và lọc
     */
    public static function getAllNotes(Request $request)
    {
        // url: {route root}/api/notes?where=id[gt]5,userId[eq]2&relations=User&page=1&column=createdAt&sortType=desc&limit=2
        // Xử  lý định dạng cột
        $column = self::$filter->transformColumn($request);
        // Xử lý điều kiện trong where
        $where = self::$filter->transformWhere($request);
        // dd($where);
        // Xử lý quan hệ trong relations
        $relations = self::$filter->transformRelations($request);
        // Xử lý các trường không có giá trị
        $page = $request->page ?? 1;
        $sortType = $request->sortType ?? 'asc';
        $limit = intval($request->limit ?? 10);
        // dd($column );
        return self::$noteRepository->findAll([
            'where' => $where, // điều kiện
            'relations' => $relations, // bảng truy vấn
            'column' => $column, // cột để sort
            'orderBy' => $sortType,
            'limit' => $limit,  // giới hạn record/page
            'page' => $page // page cần lấy
        ]);
    }
    /**
     * Tạo mới note
     */
    public static function createNote(StoreNoteRequest $request)
    {
        return self::$noteRepository->create($request->input());
    }
    /**
     * Lấy chi tiết record
     */
    public static function getNoteById($id)
    {
        return self::$noteRepository->findById($id);
    }
    /**
     * Cập nhật lại record bởi id
     */
    public static function updateNote(UpdateNoteRequest $request, $id)
    {
        return self::$noteRepository->update($request->input(), $id);
    }
    /**
     * Xóa record bởi id
     */
    public static function deleteNote($id)
    {
        return self::$noteRepository->destroy($id);
    }
}
