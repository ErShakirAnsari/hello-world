FROM ubuntu:latest

ENV REPO_URL dummy_repo
ENV REPO_TOKEN dummy_url

RUN apt update -y && apt upgrade -y

RUN apt install curl -y

# RUN && useradd -m docker

RUN mkdir actions-runner && cd actions-runner

RUN curl -o actions-runner-linux-x64-2.312.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.312.0/actions-runner-linux-x64-2.312.0.tar.gz

RUN tar xzf ./actions-runner-linux-x64-2.312.0.tar.gz

RUN ./config.sh --url $GITHUB_REPO_URL --token $REPO_TOKEN

RUN ./run.sh
ENTRYPOINT []
