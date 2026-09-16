<?php

namespace SnapTrade\Test;

use PHPUnit\Framework\TestCase;
use SnapTrade\Model\Instrument;
use SnapTrade\Model\OtherInstrument;
use SnapTrade\Model\UnderlyingCfdInstrument;
use SnapTrade\Model\UnderlyingOptionInstrument;
use SnapTrade\ObjectSerializer;

class DiscriminatorDeserializationTest extends TestCase
{
    public function testSharedDiscriminatorTargetsKeepEveryAlias(): void
    {
        foreach ([Instrument::class, UnderlyingOptionInstrument::class, UnderlyingCfdInstrument::class] as $unionClass) {
            self::assertSame(OtherInstrument::class, $unionClass::DISCRIMINATOR_MAPPING['bond']);
            self::assertSame(OtherInstrument::class, $unionClass::DISCRIMINATOR_MAPPING['other']);
        }
    }

    /**
     * @dataProvider sharedInstrumentKinds
     */
    public function testSharedDiscriminatorTargetsDeserializeAsOtherInstrument(string $kind): void
    {
        $payload = json_decode(json_encode([
            'results' => [[
                'instrument' => [
                    'kind' => $kind,
                    'id' => '1ef3a5d3-4a9b-40b2-b8d1-cc35f74d6324',
                    'symbol' => 'US912810TM09',
                    'raw_symbol' => 'US912810TM09',
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
            '\\SnapTrade\\Model\\OtherInstrument',
            $response->getResults()[0]->getInstrument()
        );
    }

    public static function sharedInstrumentKinds(): array
    {
        return [
            'bond' => ['bond'],
            'other' => ['other'],
        ];
    }
}
