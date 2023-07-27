FROM haskell:latest AS build

COPY linked-list.hs .

RUN ghc linked-list.hs -o linked-list.bin


FROM ubuntu:latest AS runner

COPY --from=build linked-list.bin .

ENTRYPOINT ["/bin/bash", "-c", "/linked-list.bin"]

