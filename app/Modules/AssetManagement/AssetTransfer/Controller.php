<?php

namespace App\Modules\AssetManagement\AssetTransfer;

use App\Modules\AssetManagement\AssetTransfer\Actions\All;
use App\Modules\AssetManagement\AssetTransfer\Actions\Delete;
use App\Modules\AssetManagement\AssetTransfer\Actions\Show;
use App\Modules\AssetManagement\AssetTransfer\Actions\Store;
use App\Modules\AssetManagement\AssetTransfer\Actions\Update;
use App\Modules\AssetManagement\AssetTransfer\Validations\Validation;
use App\Modules\AssetManagement\AssetTransfer\Actions\BulkActions;
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