<?php

namespace App\Http\Middleware;

use App\Http\Responses\BaseHTTPResponse;
use App\Http\Responses\BaseResponse;
use App\Models\User;
use Closure;
use Firebase\JWT\Key;
use Firebase\JWT\JWT as JWT;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;
use Throwable;

class FirebaseAuthMiddleware
{
    use BaseResponse;
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next): \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response|JsonResponse
    {
        try {
            $token = $request->bearerToken();
            if (empty($token)) {
                // return response()->json(['message' => 'Access token not provided'], 401);
                return $this->error(
                    $request,
                    null,
                    'Access token not provided',
                    401,
                    BaseHTTPResponse::$HTTP[401]
                );
            }
            // Giải mã token
            $key = new Key('your_secret_key', 'HS256');
            $decodedToken = JWT::decode($token, $key);
            $user_object = get_object_vars($decodedToken);
            // Gán thông tin người dùng vào request để sử dụng trong các middleware và controller khác
            // dd($token, get_object_vars($decodedToken));
            $request->merge(['user' => get_object_vars($decodedToken)]);
            $user = User::find($user_object[0]->id);
            // dd($user_object[0]->id);
            Auth::setUser($user);
            // dd(Auth::user());
            return $next($request);
        } catch (Throwable $th) {
            return $this->error(
                $request,
                $th,
                'Access token has expired',
                401,
                BaseHTTPResponse::$HTTP[401]
            );
        } catch (\Exception $e) {
            return $this->error(
                $request,
                $e,
                'Invalid access token',
                401,
                BaseHTTPResponse::$HTTP[401]
            );
        }
    }
}
