<?php

declare(strict_types=1);

namespace App;

use Mikro\MikroKernel;

class AppKernel extends MikroKernel
{
    protected function servicesDir(): string
    {
        return __DIR__.'/../config';
    }
}