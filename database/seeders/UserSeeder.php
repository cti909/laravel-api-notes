<?php

namespace Database\Seeders;

use App\Constants\GlobalConstant;
use App\Constants\PermissionConstant;
use App\Constants\RoleConstant;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        #region tạo phân quyền hệ thống
        //user
        $CREATE_USER = Permission::create([
            "name" => PermissionConstant::$CREATE_USER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $READ_ALL_USER = Permission::create([
            "name" => PermissionConstant::$READ_ALL_USER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $READ_DETAIL_USER = Permission::create([
            "name" => PermissionConstant::$READ_DETAIL_USER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $UPDATE_USER = Permission::create([
            "name" => PermissionConstant::$UPDATE_USER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $DELETE_USER = Permission::create([
            "name" => PermissionConstant::$DELETE_USER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        // note
        $CREATE_NOTE = Permission::create([
            "name" => PermissionConstant::$CREATE_NOTE,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $READ_ALL_NOTE = Permission::create([
            "name" => PermissionConstant::$READ_ALL_NOTE,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $READ_DETAIL_NOTE = Permission::create([
            "name" => PermissionConstant::$READ_DETAIL_NOTE,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $UPDATE_NOTE = Permission::create([
            "name" => PermissionConstant::$UPDATE_NOTE,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $DELETE_NOTE = Permission::create([
            "name" => PermissionConstant::$DELETE_NOTE,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        #endregion

        #region gán quyền cho các vai trò
        $adminPermissions = [
            // users
            $CREATE_USER,
            $READ_ALL_USER,
            $READ_DETAIL_USER,
            $UPDATE_USER,
            $DELETE_USER,
            // notes
            $CREATE_NOTE,
            $READ_ALL_NOTE,
            $READ_DETAIL_NOTE,
            $UPDATE_NOTE,
            $DELETE_NOTE,
        ];
        $memberPermissions = [
            // notes
            $CREATE_NOTE,
            $READ_ALL_NOTE,
            $READ_DETAIL_NOTE,
            $UPDATE_NOTE,
            $DELETE_NOTE,
        ];
        #endregion

        #region tạo tất cả vai trò trong hệ thống
        $roleAdmin = Role::create([
            "name" => RoleConstant::$ADMIN,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        $roleMember = Role::create([
            "name" => RoleConstant::$MEMBER,
            "guard_name" => GlobalConstant::$GUARD_API
        ]);
        #endregion

        #region
        $admin = User::factory(5)->hasNotes(5)->create();
        $admin->each(function ($admin) use ($roleAdmin) {
            $admin->assignRole($roleAdmin)
                ->givePermissionTo($admin->getAllPermissions());
        });
        $members = User::factory(10)->hasNotes(5)->create();
        $members->each(function ($member) use ($roleMember) {
            if (!$member->hasRole(RoleConstant::$ADMIN)) {
                $member->assignRole($roleMember)
                    ->givePermissionTo($member->getAllPermissions());
            }
        });
        #endregion

        #region phân quyền cho từng vai trò
        $roleAdmin->givePermissionTo($adminPermissions);
        $roleMember->givePermissionTo($memberPermissions);
        #endregion
    }
}
