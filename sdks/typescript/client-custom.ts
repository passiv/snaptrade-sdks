import { ClientAuth, ConfigurationParameters } from "./configuration";

export class SnaptradeCustom<TAuth extends ClientAuth> {
    constructor(configurationParameters: ConfigurationParameters<TAuth>) {}
}
