# Programming Tools
Algorithms, Data Structures, and Design Patterns in numerous programming languages.

## Why?

### Why Would You Put Algorithms, Architectures, Data Structures, Design Patterns, Frameworks, and Resources all in the same Repository 

Because they're all tools that software engineers use and should understand.
They're all in the same toolbox. They're all tools that I can reach for to 
get repeatable results when I see a problem I recognize.

### Why Would You Do All of These Multiple Times in Multiple Programming Languages?

There are five reasons that I did that.
1. I wanted to show that these tools aren't just for people using technology X.
I've found people that think that design patterns are just for Java devs, or 
algorithms only matter in high-performance computing, and I believe that to be 
wrong.
2. I want to show how different language features lend themselves more or less
to different design patterns. For example, the default list implementation 
in python very easily makes a stack, whereas you must create your own list
implementation in C first. I want to demonstrate these kinds of differences.
3. I want to show different techniques popular in different languages. 
For example, iterating through a list in C will be done with a while loop or 
a for loop, but it will be done recursively in Haskell.
4. I want to explain when to use these patterns, and I want that lesson to 
be broadly applicable. I want to be able to explain when to use a queue
and when to use a stack in any programming language that I'm familiar with.
5. I want to be able to compare the performance of these implementations. I 
want to compare a C linked list to a Haskell linked list and see if Haskell's 
tail call recursion actually saves the amount of memory that people on reddit 
claim it does.

## Current List of Tools in this Repo
- Algorithms
    - Quicksort
        - Ruby

- Architectures
  
- Data Structures
    - Linked List
        - C
        - Haskell
        - Ruby
    - Stack
        - C
    - Binary Tree
        - Haskell

- Design Patterns
    - Singleton
        - Kotlin

- Frameworks
    - Web UI Frameworks
        - React 

- Resources
    - OhShitGit
    - tldr

## Contributing 

If you want to see something in this repository, you are encouraged to open a
github issue about it. 

However, this repository is currently intended to be my own personal work, not
a community project. As such, I am not accepting pull requests at this time.


## Disclaimers

1. I offer no guarantee of the correctness or completeness of anything in this
   repository. If you copy-paste my incomplete buggy code into your production
   code base, break something, and get fired, that's on you.
2. I offer no guarantee that any information in this repository is correct. I
   may have incorrect information about algorithms, data structures, patterns,
   or anything else written about in this repository.
3. I offer no guarantee that anything in this repository is up to date. If a
   framework releases a breaking change update, I may or may not go back and
   update that section of this repository.
4. I STRONGLY discourage using this repository to cheat on programming
   assignments. I have taken the time to create and maintain this repository
   because my career as a software engineer has taught me that these tools are
   necessary to understand. Please do use my work as a reference in your own
   learning, but don't just copy-paste it for a grade.

