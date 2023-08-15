FROM haskell:latest AS build

COPY monad.hs .
COPY test.hs .

RUN ghc monad.hs test.hs -o monad-test.bin

FROM ubuntu:latest AS runner

COPY --from=build monad-test.bin .

ENTRYPOINT ["/bin/bash", "-c", "/monad-test.bin"]
