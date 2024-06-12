FROM ruby:3.3.2

ENV TZ America/Buenos_Aires

RUN apt-get update && apt-get install -y git build-essential nodejs tzdata libpq-dev postgresql zlib1g-dev liblzma-dev patch nano

RUN mkdir -p /app
WORKDIR /app

COPY . ./

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle

ENV PATH="${BUNDLE_BIN}:${PATH}"

RUN gem install bundler -v 2.5.7

EXPOSE 3000
