<?php

namespace Appwrite\Services;

use Service;

class Services
{
    /**
     * @var array
     */
    protected $list = [];

    /**
     * @param string $key
     * @return Service
     */
    public function add($key):Service
    {
        $service = new Service($key);

        $this->list[$key] = $service;

        return $service;
    }
}