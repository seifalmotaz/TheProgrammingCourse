# Dart Practice Problems — Beginner LeetCode‑style (5 Tasks)

## 1) Two Sum (Indices)

**Goal:** Given an array of integers `nums` and an integer `target`, return the _indices_ of the two numbers such that they add up to `target`. Assume **exactly one** solution and you **may not** use the same element twice.

- **Signature:** `List<int> twoSum(List<int> nums, int target)`
- **Return:** A list of two indices `[i, j]` (order doesn’t matter).
- **Examples:**

  - `nums = [2,7,11,15], target = 9 → [0,1]`
  - `nums = [3,2,4], target = 6 → [1,2]`

- **Hint:** Use a `Map<int,int>` to store _value → index_ while you iterate once.
- **Target Complexity:** Time `O(n)`, Space `O(n)`.
- **Edge cases:** Negatives, duplicates, large numbers.

---

## 2) Valid Brackets

**Goal:** Given a string `s` containing only `'()[]{}'`, determine if the string is **valid**. A string is valid if open brackets are closed by the same type and in the correct order.

- **Signature:** `bool isValidBrackets(String s)`
- **Examples:**

  - `"()" → true`
  - `"()[]{}" → true`
  - `"(]" → false`
  - `"([)]" → false`
  - `"{[]}" → true`

- **Hint:** Use a `List<String>` as a stack. Push on open; on close, check top matches.
- **Target Complexity:** Time `O(n)`, Space `O(n)`.
- **Edge cases:** Empty string is valid; long repeated sequences; early mismatch.

---

## 3) String Compression (Run‑Length Encoding)

**Goal:** Compress a string by replacing runs of the same character with `char + count`. Return the **compressed** string **only if it becomes shorter**; otherwise, return the original.

- **Signature:** `String compress(String s)`
- **Examples:**

  - `"aabcccccaaa" → "a2b1c5a3"` (shorter → return compressed)
  - `"abca" → "abca"` (compressed is `"a1b1c1a1"` which is longer → return original)

- **Hint:** Iterate once, count consecutive characters; build with `StringBuffer`.
- **Target Complexity:** Time `O(n)`, Space `O(n)` worst case.
- **Edge cases:** Empty string; single char; all same char; mixed cases.

---

## 4) Merge Two Sorted Arrays

**Goal:** Given two **sorted** integer arrays `a` and `b`, return a new **sorted** array that merges both.

- **Signature:** `List<int> mergeSorted(List<int> a, List<int> b)`
- **Examples:**

  - `a=[1,3,5], b=[2,4,6] → [1,2,3,4,5,6]`
  - `a=[1,2,2], b=[2,2,3] → [1,2,2,2,2,3]`

- **Hint:** Two‑pointer technique; avoid `..sort()` on concatenation.
- **Target Complexity:** Time `O(a.length + b.length)`, Space `O(a.length + b.length)`.
- **Edge cases:** One array empty; duplicates; negative numbers.

---

## 5) Most Frequent Word

**Goal:** Given a text, return the most frequent **word** (case‑insensitive). Words consist of letters (`a–z`, `A–Z`). Ignore punctuation and numbers. If there’s a tie, return the lexicographically smallest word among the top frequencies.

- **Signature:** `String mostFrequentWord(String text)`
- **Examples:**

  - `"To be, or not to be." → "be"`
    (Counts: to=2, be=2, or=1, not=1 → tie between `be` and `to` → `"be"` is smaller)
  - `"Hello hello HELLO!" → "hello"`

- **Hint:** Normalize to lowercase; extract words with RegExp; count with `Map<String,int>`.
- **Target Complexity:** Time `O(n)` over characters, Space up to distinct words.
- **Edge cases:** Empty string → return `""`; punctuation only; ties.
