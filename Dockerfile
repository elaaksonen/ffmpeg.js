FROM trzeci/emscripten:latest

RUN apt-get update && apt-get -y install wget python git automake libtool build-essential cmake libglib2.0-dev closure-compiler

COPY . /src
RUN git submodule init && git submodule update --recursive

RUN make wasm-only