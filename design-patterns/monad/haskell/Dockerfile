FROM haskell:latest AS build

COPY monad.hs .
COPY test.hs .
COPY optional.hs .
COPY state.hs .

RUN ghc monad.hs optional.hs state.hs test.hs -o monad-test.bin

FROM ubuntu:latest AS runner

COPY --from=build monad-test.bin .

ENTRYPOINT ["/bin/bash", "-c", "/monad-test.bin"]
