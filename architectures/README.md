# Architectures

This directory in this project contains Architectures.
Each folder represents a different architectures.
Each architecture directory has the following:
1. A README explaining the architecture, how it works, and where 
the architecture is commonly used.
2. A folder for each implementation of that architecture, labelled by 
programming language.

Each implementation folder contains the following:
1. The actual implementation, complete with components for a whole
working system using that architecture.
2. A test file, which shows how the components of that architecture
work together to accomplish a task. The test files will just print output using the exposed API, not rigorously unit test the implementation.  
3. A `Dockerfile`, which will build the implementation and tests.
4. A `compose.yml` file, which will build the docker image(s) and run the tests.

To run the tests as prescribed in the tests and docker file, install docker,
install docker-compose, start the docker engine, and run the following command.

```
docker compose up --build
```

