from haskell:latest as builder

COPY binary-tree.hs .
COPY test.hs .

RUN ghc binary-tree.hs test.hs -o binary-tree.bin


FROM ubuntu:latest AS RUNNER
COPY --from=builder binary-tree.bin .

ENTRYPOINT ["/bin/bash", "-c", "/binary-tree.bin"]

