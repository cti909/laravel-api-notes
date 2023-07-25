<?php

namespace App\Repositories\Auth;

use App\Constants\RoleConstant;
use App\Models\User;
use App\Repositories\BaseRepository;

class AuthRepository extends BaseRepository implements IAuthRepository
{
    public function getModel()
    {
        return User::class;
    }

    function me()
    {
        $user = auth()->user();
        return $user;
    }

    function register(mixed $data)
    {
        $user = User::create([
            'name' => $data["name"],
            'email' => $data["email"],
            'avatar' => $data["avatar"],
            'password' => bcrypt($data["password"])
        ]);
        // Gán role và phân quyền
        $user->assignRole(RoleConstant::$MEMBER)->givePermissionTo($user->getAllPermissions());
        return $user;
    }
}
