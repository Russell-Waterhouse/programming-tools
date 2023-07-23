FROM ubuntu:latest AS build 

RUN apt update && apt install -y gcc

COPY linked-list.c .

RUN gcc -o linked-list.bin linked-list.c

FROM ubuntu:latest AS runner

COPY --from=build linked-list.bin .

ENTRYPOINT ["/bin/bash", "-c", "/linked-list.bin"]
