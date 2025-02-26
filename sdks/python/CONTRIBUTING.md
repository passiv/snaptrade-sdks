## Setup your local enviornment
```bash
brew install pyenv poetry
pyenv install 3.7.17
pyenv local 3.7.17
eval "$(pyenv init -)"
poetry config virtualenvs.in-project true
poetry install
source .venv/bin/activate
```

## Run tests
```bash
SNAPTRADE_CONSUMER_KEY=secret SNAPTRADE_CLIENT_ID=client SNAPTRADE_TEST_USER_ID=1 SNAPTRADE_TEST_USER_SECRET=secret python -m unittest
```

