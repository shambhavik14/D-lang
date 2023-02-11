# Design Pattern Exploration

# Implementation Logistics

- You may use whatever operating system, IDE, or tools for completing this assignment.
	- However, my instructions will usually be using the command-line, and that is what I will most easily be able to assist you with.
- In the future there may be restrictions, so please review the logistics each time.

# Resources to help

Provided below are a list of curated resources to help you complete the task(s) below. Consult them (read them, or do ctrl+f for keywords) if you get stuck.

- A Useful free text for game design patterns: https://gameprogrammingpatterns.com/contents.html

# Description

Most folks have learned about design patterns in either their OOD, PDP, or equivalent classes. For this task, I'd like you to implement a design pattern that you have previously implemented using DLang. If you have not previously implemented a pattern, then you may implement a pattern that we have seen in class (e.g. singleton or adaptor). Your pattern will be graded based on completion.

## Task 1 - Dub

- To setup this part of the project, you should initialize a project using 'dub'.
- We will run this portion of your assignment by just using 'dub run' to make sure that your program compiles as well as the unit tests that you create.
- You should include at least 3 unit tests showing your design pattern being used -- this is where we will observe your pattern being used.
	- You can use `dub --build=unittest` to test only your unit tests.
	- You can use `dub --build=release` to otherwise explicitly run your program.
- You should create documentation using ddoc with dub.
	- You can run `dub --build=docs` and commit the docs folder in this repository.

## Task 2 - Tradeoffs

Modify the [exercise.md](./exercise.md) folder briefly discussing some of the pros and cons of the design pattern that you have explored. Mention if you have used any 'idiomatic d' programming in your solution.

## Testing

- We will run your project with 'dub --build=unittest'.

# Submission/Deliverables

### Submission

- Commit all of your files to github, including any additional files you create.
- Do not commit any binary files unless told to do so.
- Do not commit any 'data' files generated when executing a binary.

### Deliverables

- A working design pattern 
- 3 unit tests
- A completed [exercise.md](./exercise.md)

# Going Further

An optional task(if any) that will reinforce your learning throughout the semester--this is not graded.

1. N/A

# F.A.Q. (Instructor Anticipated Questions)

1. Q: Can I choose any pattern?
	- A: Anything other than iterator (which is in part 1) -- choose something interesting during this exploration.
2. Q: I choose the singleton and I'm having trouble implementing the unittests.
	- A: Yes, that is in fact one of the cons of the singleton (a pattern with global state). You may otherwise have to extend functionality and add a 'destroy' or 'reset' function to the singleton.
