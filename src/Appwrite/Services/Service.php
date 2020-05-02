<?php

namespace Appwrite\Services;

class Services
{
    /**
     * @var string
     */
    protected $description = '';

    /**
     * @var string
     */
    protected $controller = '';

    /**
     * @var bool
     */
    protected $SDK = false;

    /**
     * @var bool
     */
    protected $tests = false;

    /**
     * @param string $text
     */
    public function description(string $text):self
    {
        $this->description = $text;
        
        return $this;
    }

    /**
     * @param string $text
     */
    public function controller(string $text):self
    {
        $this->controller = $text;

        return $this;
    }

    /**
     * @param bool $status
     */
    public function SDK(bool $status):self
    {
        $this->SDK = $status;

        return $this;
    }

    /**
     * @param bool $status
     */
    public function tests(bool $status):self
    {
        $this->tests = $status;

        return $this;
    }

    /**
     * @return string
     */
    public function getDescription():string
    {
        return $this->description;
    }

    /**
     * @return string
     */
    public function getController():string
    {
        return $this->description;
    }

    /**
     * @return bool
     */
    public function getSDK():bool
    {
        return $this->tests;
    }

    /**
     * @return bool
     */
    public function getTests():bool
    {
        return $this->tests;
    }
}