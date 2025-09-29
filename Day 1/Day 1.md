# Day 1: Introduction to Dart

## Objectives

- Install Dart SDK
- Read the Dart language specification
- Learn the syntax and features of Dart
- Understand the basic concepts of Dart programming language
- Learn the Dart language type & compilation

## Basics of Dart

### 1. **Variables and Data Types**

- Declaring variables
- Data types: int, double, String, bool, List, Map, Set
- Type inference
- Dynamic typing
- Sound null safety

### 2. **Control Flow Statements**

- if, else, switch
- for, while, do-while
- break, continue
- try, catch, finally

### 3. **Functions**

- Function declaration and definition
- Parameters and arguments
- Return values
- Anonymous functions
- Arrow functions

### 4. **Classes and Objects**

- Class declaration and definition
- Instance variables and methods
- Constructors
- Inheritance
- Polymorphism

### 5. **Generics**

- Generic types and their compilation
- The difference between `dynamic`, `Object`, and `Object?`

## Essential Theoretical Topics for Your Dart Session

### 1. **Dart Language Type & Compilation**

- **Statically typed language** with type inference
- **Sound null safety** - how Dart prevents null errors at compile time
- **Just-in-Time (JIT) vs Ahead-of-Time (AOT) compilation**
  - JIT: Used during development (hot reload, faster iteration)
  - AOT: Used for production (faster startup, better performance)
- How Dart compiles to native machine code and JavaScript

### 2. **The Dart VM Architecture**

- What is the Dart VM and why it exists
- **Isolates** - Dart's concurrency model (not threads!)
  - Each isolate has its own memory heap
  - Communication through message passing
  - Why this prevents race conditions
- **Event Loop & Asynchronous Programming**
  - Single-threaded execution model
  - Event queue and microtask queue
  - How async/await works under the hood

### 3. **Memory Management**

- **Garbage Collection** in Dart
- Generational garbage collector (young vs old generation)
- How Dart manages memory automatically
- Stack vs Heap memory allocation

### 4. **Type System Deep Dive**

- **Strong typing** vs dynamic typing
- Generic types and their compilation
- The difference between `dynamic`, `Object`, and `Object?`

### 5. **Execution Model**

- How Dart code runs from start to finish
- The `main()` function as entry point

### 6. **Performance Characteristics**

- Why Dart is fast (AOT compilation, predictable performance)
- Tree shaking and code elimination
