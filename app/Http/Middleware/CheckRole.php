<?php

namespace App\Http\Middleware;

use App\Http\Responses\BaseHTTPResponse;
use App\Http\Responses\BaseResponse;
use App\Models\User;
use Closure;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\UnauthorizedException;
use Spatie\Permission\Traits\HasRoles;
use Spatie\Permission\Models\Role;


class CheckRole extends BaseHTTPResponse
{
    use HasRoles, BaseResponse;

    public function handle($request, Closure $next, $role)
    {
        try {
            // Kiểm tra xem người dùng đã đăng nhập hay chưa
            if (Auth::check()) {
                // Lấy người dùng hiện tại
                $user_id = Auth::user()->id;
                $user = User::find($user_id);
                // dd($user->roles->pluck('name')->toArray());
                // Kiểm tra vai trò của người dùng
                if ($user->hasRole($role)) {
                    // Người dùng có vai trò phù hợp, cho phép truy cập tiếp theo
                    return $next($request);
                } else {
                    // Người dùng không có vai trò phù hợp, ném một UnauthorizedException
                    throw new UnauthorizedException();
                }
            }
        } catch (UnauthorizedException $e) {
            return $this->error(
                $request,
                $e,
                'User does not have the right roles',
                403,
                BaseHTTPResponse::$HTTP[403]
            );
        } catch (QueryException $e) {
            return $this->error(
                $request,
                $e,
                'Database query error',
                500,
                BaseHTTPResponse::$HTTP[500]
            );
        } catch (\Exception $e) {
            return $this->error(
                $request,
                $e,
                'An error occurred',
                500,
                BaseHTTPResponse::$HTTP[500]
            );
        }
    }
}
