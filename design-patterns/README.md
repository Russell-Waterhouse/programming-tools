# Design Patterns

This directory in this project contains Design Patterns.
Each folder represents a different design pattern.
Each data structure has the following:
1. A README explaining the design pattern, how it works, and where 
the design pattern is commonly used.
2. A folder for each implementation of that design pattern, labelled by 
programming language.

Each implementation folder contains the following:
1. The actual implementation of the design pattern.
2. A test file, which shows how the components of the design pattern 
fit together and work together.
3. A `Dockerfile`, which will build the implementation and tests.
4. A `compose.yml` file, which will build the docker image(s) and run the tests.

To run the tests as prescribed in the tests and docker file, install docker,
install docker-compose, start the docker engine, and run the following command.

```
docker compose up --build
```

