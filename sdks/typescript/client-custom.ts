import { AuthMode, ConfigurationParameters } from "./configuration";

export class SnaptradeCustom<TAuth extends AuthMode> {
    constructor(configurationParameters: ConfigurationParameters<TAuth>) {}
}
