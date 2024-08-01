FROM node:18-bullseye

# Required for typescript
RUN npm install -g pnpm 

RUN apt-get update && apt-get install --no-install-recommends -y software-properties-common ca-certificates lsb-release apt-transport-https
RUN sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' && wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -
# Installations for python and java
RUN apt-get update && apt-get install -y lsof python3 python3-pip python3-venv maven openjdk-11-jdk golang php8.2 php8.2-curl php8.2-dom php8.2-mbstring php8.2-tokenizer php8.2-xml php8.2-xmlwriter ruby-full
RUN gem install bundler
RUN pip3 install poetry
# Clean up python installations
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# csharp
RUN curl -Lo dotnet-install.sh https://dot.net/v1/dotnet-install.sh && \
    chmod +x ./dotnet-install.sh && \
    ./dotnet-install.sh --channel 7.0 && \
    ./dotnet-install.sh --channel 5.0 && \
    ./dotnet-install.sh --channel 3.1
ENV PATH=$PATH:/root/.dotnet

COPY . /app

RUN npm install -g konfig-cli

# Use bash as default shell
SHELL ["/bin/bash", "-c"]

