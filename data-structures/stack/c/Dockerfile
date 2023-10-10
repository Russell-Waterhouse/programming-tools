FROM ubuntu:latest AS build

RUN apt update && apt install -y gcc

COPY stack.c .

COPY stack.h .

COPY test.c .

RUN gcc stack.c test.c -o stack.bin

FROM ubuntu:latest AS runner

COPY --from=build stack.bin .

CMD [ "/bin/bash", "-c", "/stack.bin" ]

