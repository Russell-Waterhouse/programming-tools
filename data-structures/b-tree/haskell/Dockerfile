from haskell:latest as builder

COPY b-tree.hs .
COPY test.hs .

RUN ghc b-tree.hs test.hs -o b-tree.bin


FROM ubuntu:latest AS RUNNER
COPY --from=builder b-tree.bin .

ENTRYPOINT ["/bin/bash", "-c", "/b-tree.bin"]
