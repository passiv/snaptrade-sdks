# Changelog

## Unreleased

- Add optional `timeout` to synchronous API methods, accepting a number of seconds
  (`timeout=10.0`) or separate connection and read timeouts (`timeout=(2.0, 10.0)`).
  Omitting it preserves the default transport behavior. Timeouts apply to each
  HTTP attempt; retries can increase the overall request duration.
