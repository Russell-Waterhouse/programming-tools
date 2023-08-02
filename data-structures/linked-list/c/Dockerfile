FROM ubuntu:latest AS build 

RUN apt update && apt install -y gcc

COPY linked-list.c .
COPY linked-list.h .
COPY test.c .

RUN gcc -o linked-list-test.bin test.c linked-list.c

FROM ubuntu:latest AS runner

COPY --from=build linked-list-test.bin .

ENTRYPOINT ["/bin/bash", "-c", "/linked-list-test.bin"]
