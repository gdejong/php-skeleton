<?php declare(strict_types=1);

namespace gdejong\Project;

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    public function testExample(): void
    {
        $example = new Example();
        $this->assertTrue($example->true());
    }
}