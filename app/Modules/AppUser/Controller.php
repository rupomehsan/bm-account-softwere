<?php

namespace App\Modules\AppUser;

use App\Modules\AppUser\Actions\All;
use App\Modules\AppUser\Actions\Delete;
use App\Modules\AppUser\Actions\Show;
use App\Modules\AppUser\Actions\Store;
use App\Modules\AppUser\Actions\Update;
use App\Modules\AppUser\Validations\Validation;
use App\Modules\AppUser\Actions\BulkActions;
use App\Http\Controllers\Controller as ControllersController;


class Controller extends ControllersController
{

    public function index()
    {
        $data = All::execute();
        return $data;
    }

    public function store(Validation $request)
    {
        $data = Store::execute($request);
        return $data;
    }

    public function show($id)
    {
        $data = Show::execute($id);
        return $data;
    }

    public function update(Validation $request, $id)
    {
        $data = Update::execute($request, $id);
        return $data;
    }

    public function destroy($id)
    {
        $data = Delete::execute($id);
        return $data;
    }
    public function bulkAction()
    {
        $data = BulkActions::execute();
        return $data;
    }

}