# Algorithms

This directory in this project contains Algorithms.
Each folder represents a different algorithms.
Each algorichm directory has the following:
1. A README explaining the algorithm, how it works, time complexity, and where 
the algorithm is commonly used.
2. A folder for each implementation of that algorithm, labelled by 
programming language.

Each implementation folder contains the following:
1. The actual implementation, complete with functions for all the basic 
operations supported by that algorithm.
2. A test file, which shows how the operations on the algorithm  
are used.
3. A `Dockerfile`, which will build the implementation and tests.
4. A `compose.yml` file, which will build the docker image(s) and run the tests.

To run the tests as prescribed in the tests and docker file, install docker,
install docker-compose, start the docker engine, and run the following command.

```
docker compose up --build
```

