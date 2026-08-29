<?php

namespace SnapTrade\Test;

use PHPUnit\Framework\TestCase;
use SnapTrade\ObjectSerializer;

class AllOfReferenceDeserializationTest extends TestCase
{
    /**
     * @dataProvider singletonAllOfProperties
     */
    public function testSingletonAllOfPropertyDeserializesUsingQualifiedModelType(
        string $modelClass,
        string $property,
        string $getter,
        string $value
    ): void {
        $model = ObjectSerializer::deserialize(
            (object) [$property => $value],
            $modelClass
        );

        self::assertSame($value, $model->$getter());
    }

    public static function singletonAllOfProperties(): array
    {
        return [
            'order leg status' => [
                '\\SnapTrade\\Model\\AccountOrderRecordLeg',
                'status',
                'getStatus',
                'EXECUTED',
            ],
            'order role' => [
                '\\SnapTrade\\Model\\AccountOrderRecordV2',
                'order_role',
                'getOrderRole',
                'TRIGGER',
            ],
            'multi-leg price effect' => [
                '\\SnapTrade\\Model\\MlegTradeForm',
                'price_effect',
                'getPriceEffect',
                'CREDIT',
            ],
        ];
    }
}
