FROM rust:latest AS builder

COPY test.rs .
COPY linked-list.rs .

RUN rustc test.rs -o linked-list.bin

FROM rust:latest AS runner

COPY --from=builder linked-list.bin .

CMD [ "/bin/bash", "-c", "/linked-list.bin" ]
