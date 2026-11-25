import { ClientAuth } from "../configuration";
import { TradingApiGenerated } from "./trading-api-generated";
export * from "./trading-api-generated";

export class TradingApi<TAuth extends ClientAuth> extends TradingApiGenerated<TAuth> {}
