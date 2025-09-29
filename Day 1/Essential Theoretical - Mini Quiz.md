# Essential Theoretical — Mini Quiz

This quiz reinforces key ideas from “Essential Theoretical — Answers”. It’s beginner‑friendly and focuses on understanding, not memorization.

Use the sections and glossary in `Day 1/Essential Theoretical.md` as references.

---

## Section 1 — Types & Compilation

1) Multiple choice: Which statement about Dart’s types is true?
   A. All variables are dynamic by default
   B. Types are non‑nullable by default; use `T?` for nullable
   C. `var` always means dynamic at runtime
   D. Null safety is only checked at runtime

2) Short answer: What’s the main difference between JIT and AOT compilation in Dart?

3) Code reading: What are the inferred types and final values?
```dart
var a = 10;
final b = 3.14;
String c = 'hi';
int? d;
var e = d ?? 42;
```
- a = ?, b = ?, c = ?, d = ?, e = ?

---

## Section 2 — Dart VM & Isolates

4) True/False: Two isolates share the same heap and can modify each other’s memory directly.

5) Ordering: In an isolate, which runs first before the next event? (pick one)
   A. Event queue
   B. Microtask queue

6) Code ordering: What is the print order?
```dart
import 'dart:async';

void main() {
  print('1: start');
  scheduleMicrotask(() => print('2: microtask'));
  Future(() => print('3: event'));
  print('4: end');
}
```

---

## Section 3 — Memory Management

7) Short answer: In one sentence, what does a generational garbage collector assume about most objects?

8) Multiple choice: Which typically lives on the heap?
   A. Local variable references
   B. Call frames
   C. Instances like `List`, `Map`, and class objects
   D. Return addresses

9) Code reasoning: After `u = User('Ben');` what makes `User('Ava')` eligible for GC?
```dart
class User { final String name; User(this.name); }
void main() {
  var u = User('Ava');
  u = User('Ben');
}
```

---

## Section 4 — Type System Deep Dive

10) Multiple choice: What’s a benefit of reified generics?
    A. Smaller binaries
    B. Type arguments available at runtime for checks like `list is List<int>`
    C. No need for type inference
    D. Allows shared mutable memory between isolates

11) Short answer: When would you deliberately use `dynamic` instead of `Object`?

12) Code reading: What is the type of `x` and `y`?
```dart
T first<T>(List<T> items) => items.first;
void main() {
  final x = first<int>([1, 2, 3]);
  final y = first(['a', 'b']);
}
```

---

## Section 5 — Execution Model

13) Short answer: Name two valid `main()` signatures for a Dart CLI app.

14) Code ordering with async/await: What prints?
```dart
Future<void> main() async {
  print('A');
  await Future(() => print('B'));
  print('C');
}
```

15) Exit condition: Name one reason a Dart CLI process might keep running instead of exiting.

---

## Section 6 — Performance

16) Short answer: Why does AOT improve startup time?

17) Multiple choice: Tree shaking removes…
    A. Runtime exceptions
    B. Unused code and symbols
    C. All third‑party packages
    D. Comments and whitespace only

18) Short answer: Name one earlier concept (Sections 1–4) that positively impacts performance and why.

---

## Answer Key

1) B
2) JIT compiles while running (great for hot reload); AOT compiles ahead of time (fast startup, steady performance).
3) a:int=10, b:double=3.14, c:String='hi', d:int?=null, e:int=42.
4) False — isolates do not share heaps; they communicate by messages.
5) B — Microtask queue.
6) Order: 1: start, 4: end, 2: microtask, 3: event.
7) Most objects die young; collect short‑lived ones quickly.
8) C — instances like List/Map/class objects.
9) The original object has no references pointing to it anymore, so it’s unreachable and eligible for GC.
10) B — runtime availability of type arguments for precise checks and casts.
11) When you intentionally need to bypass static checks for a value and accept runtime errors if operations don’t exist.
12) x:int, y:String (inferred).
13) `void main() {}` and `Future<void> main() {}` (also `void main(List<String> args)` is valid).
14) A, B, C.
15) Pending timers/I/O/futures or scheduled microtasks/events keep the event loop alive.
16) Code is already native machine code; no JIT warm‑up needed.
17) B — Unused code and symbols.
18) Examples: sound types help optimization; reified generics enable precise checks; memory model (GC) reduces overhead by reclaiming unused objects; isolates avoid locks and data races.
