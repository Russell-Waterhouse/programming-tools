FROM node:latest AS build

RUN npm install typescript -g

COPY test.ts .

RUN tsc test.ts

FROM node:latest AS runner

copy --from=build test.js .

ENTRYPOINT ["/usr/local/bin/node", "test.js"]


