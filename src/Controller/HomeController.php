<?php

declare(strict_types=1);

namespace App\Controller;

use Mikro\Http\AbstractController;
use Mikro\Http\Request;
use Mikro\Http\Response;
use Mikro\Http\Route;

class HomeController extends AbstractController
{
    #[Route('/', methods: [Request::GET])]
    public function __invoke(): Response
    {
        return Response::response('ok');
    }
}