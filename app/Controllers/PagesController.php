<?php

namespace App\Controllers;

use App\Controllers\BaseController;

use App\Models\FlatModel;

class PagesController extends BaseController
{
    public function index()
    {
        return 
            view("templates/header").
            view("pages/index").
            view("templates/footer");
    }
}
