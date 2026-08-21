<?php

namespace SnapTrade\Test;

use PHPUnit\Framework\TestCase;
use SnapTrade\ObjectSerializer;

class DiscriminatorDeserializationTest extends TestCase
{
    /**
     * @dataProvider instrumentKinds
     */
    public function testAccountPositionInstrumentUsesDiscriminatorMapping(string $kind, string $expectedClass): void
    {
        $payload = json_decode(json_encode([
            'results' => [[
                'instrument' => [
                    'kind' => $kind,
                    'symbol' => 'CLSK',
                    'description' => 'CleanSpark, Inc.',
                    'exchange' => 'NASDAQ',
                    'currency' => 'USD',
                ],
                'units' => 10,
                'price' => 9.5,
                'cost_basis' => 8.0,
                'currency' => 'USD',
                'cash_equivalent' => false,
            ]],
            'data_freshness' => new \stdClass(),
        ]));

        $response = ObjectSerializer::deserialize(
            $payload,
            '\\SnapTrade\\Model\\AllAccountPositionsResponse'
        );

        self::assertInstanceOf(
            $expectedClass,
            $response->getResults()[0]->getInstrument()
        );
    }

    public static function instrumentKinds(): array
    {
        return [
            'stock' => ['stock', '\\SnapTrade\\Model\\StockInstrument'],
            'crypto' => ['crypto', '\\SnapTrade\\Model\\CryptoInstrument'],
            'etf' => ['etf', '\\SnapTrade\\Model\\EtfInstrument'],
            'other' => ['other', '\\SnapTrade\\Model\\OtherInstrument'],
        ];
    }
}
