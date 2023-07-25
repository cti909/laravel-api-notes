<?php

namespace App\Http\Controllers\APIs;

use App\Constants\MessageConstant;
use App\Constants\RoleConstant;
use App\Http\Controllers\Controller;
use App\Http\Requests\User\StoreUserRequest;
use App\Http\Requests\User\UpdateUserRequest;
use App\Http\Responses\BaseResponse;
use App\Repositories\User\UserRepository;
use App\Services\User\UserService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    use BaseResponse;
    public function __construct()
    {
        new UserService(new UserRepository());
        $this->middleware('role:' . RoleConstant::$ADMIN)->only(['index, show, update, detroy']);
        $this->middleware('role:' . RoleConstant::$MEMBER)->only([]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request): JsonResponse
    {
        // dd(Auth::user(), auth()->user());

        try {
            $data = UserService::getAllUsers($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$GET_LIST_USERS_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$GET_LIST_USERS_FAILED
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
            $data = UserService::getUserById($id);
            return $this->success(
                $request,
                $data,
                MessageConstant::$GET_DETAIL_USER_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$GET_DETAIL_USER_FAILED
            );
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\User\UpdateUserRequest  $request
     * @param  mixed $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserRequest $request, mixed $id): JsonResponse
    {
        try {
            $data = UserService::updateUser($request, $id);
            return $this->success(
                $request,
                $data,
                MessageConstant::$UPDATE_USER_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$UPDATE_USER_FAILED
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
            $data = UserService::deleteUser($id);
            return $this->success(
                $request,
                $data,
                MessageConstant::$DELETE_USER_SUCCESS
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$DELETE_USER_FAILED
            );
        }
    }
}
