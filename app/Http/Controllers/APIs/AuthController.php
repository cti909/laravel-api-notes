<?php

namespace App\Http\Controllers\APIs;

use App\Constants\GlobalConstant;
use App\Constants\MessageConstant;
use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\EmailVerificationRequest;
use App\Http\Requests\Auth\LoginRequest;
use App\Http\Requests\Auth\RegisterRequest;
use App\Http\Responses\BaseHTTPResponse;
use App\Http\Responses\BaseResponse;
use App\Models\User;
use App\Repositories\Auth\AuthRepository;
use App\Services\Auth\AuthService;
use Firebase\JWT\JWT;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    use BaseResponse;
    public function __construct()
    {
        new AuthService(new AuthRepository());
        // except la loai tru ra
        $this->middleware('auth:api', ['except' => ['login', 'register', 'sendOtpEmail', 'emailVerification', 'me']]);
    }
    public function me(Request $request): JsonResponse
    {
        try {
            $user = null;
            $data = null;
            // Lấy giá trị của header "Authorization"
            $authHeader = $request->header('Authorization');
            // Kiểm tra xem header có chứa từ "Bearer " không
            if (strpos($authHeader, 'Bearer ') === 0) {
                // Lấy JWT token bằng cách loại bỏ phần "Bearer " khỏi header
                $jwtToken = substr($authHeader, 7);
                try {
                    $user = JWTAuth::parseToken()->authenticate($jwtToken);
                    // ...
                } catch (\Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
                    // ...
                } catch (\Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
                    // ...
                } catch (\Tymon\JWTAuth\Exceptions\JWTException $e) {
                    // ...
                }
            }
            if($user) {
                $data = User::findOrFail($user->id);
            }
            return $this->success(
                $request,
                $data,
                "Get auth sucess"
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                "Get auth failed"
            );
        }
    }
    public function login(LoginRequest $request): JsonResponse
    {
        $input = $request->input();
        $isLogin = Auth::attempt($input);
        // nếu đăng nhập thành công thì
        // tạo RA 1 TOKEN để gửi về client thông qua jwt
        // khi người dùng đưa lên mà không đúng thì 400 -> BadRequest
        $statusCode = 400;
        if (!$isLogin) {
            return response()->json([
                'statusMessage' => BaseHTTPResponse::$HTTP[$statusCode],
                'statusCode' => $statusCode,
                'message' => 'Email or password is wrong',
                'time' => Carbon::now()->format(GlobalConstant::$FORMAT_DATETIME),
                'path' => $request->getRequestUri()
            ], $statusCode);
        }
        // tạo token
        // $data = User::where('email', '=', $input['email'])->get()->toArray();
        // $token = JWT::encode($data, 'your_secret_key', 'HS256');
        $user = Auth::user();
        $token = JWTAuth::fromUser($user);
        // dd(Auth::user());
        return response()->json([
            'status' => 200,
            'message' => 'Login success',
            'data' => $user,
            'meta' => $token

        ]);
    }
    public function register(RegisterRequest $request): JsonResponse
    {
        try {
            $data = AuthService::register($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$REGISTER_SUCCESS,
                201,
                BaseHTTPResponse::$HTTP[201]
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$REGISTER_FAILED
            );
        }
    }
    public function sendOtpEmail(EmailVerificationRequest $request): JsonResponse
    {
        try {
            $data = AuthService::sendOtpEmail($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$SEND_OTP_SUCCESS,
                201,
                BaseHTTPResponse::$HTTP[201]
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$SEND_OTP_FAILED
            );
        }
    }
    public function emailVerification(EmailVerificationRequest $request): JsonResponse
    {
        try {
            $data = AuthService::emailVerification($request);
            return $this->success(
                $request,
                $data,
                MessageConstant::$EMAIL_VERIFICATION_SUCCESS,
                201,
                BaseHTTPResponse::$HTTP[201]
            );
        } catch (\Throwable $th) {
            return $this->error(
                $request,
                $th,
                MessageConstant::$EMAIL_VERIFICATION_FAILED
            );
        }
    }
}
