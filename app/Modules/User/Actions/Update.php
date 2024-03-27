<?php

namespace App\Modules\User\Actions;

use App\Modules\User\Actions\Validation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class Update
{
    static $model = \App\Modules\User\Model::class;

    public static function execute($user, $request)
    {

        try {
            // dd(request()->all());
            if (!$user) {
                return messageResponse('Data not found...', 404, 'error');
            }
            $data = $request->validated();
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = uploader($image, 'uploads/user');
                $data['image'] = $imageName;
            } else {
                $data['image'] = $user->image;
            }

            $user->update($data);
            DB::table('user_user_role')->where('user_id', $user->id)->update([
                'user_id' => $user->id,
                'user_role_id' => 2
            ]);

            return messageResponse('User updated successfully');
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
