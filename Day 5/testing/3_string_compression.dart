// Problem 3: String Compression (Run-Length Encoding)
// Goal: Compress a string by replacing runs of the same character with char + count.
// Return the compressed string ONLY if it becomes shorter; otherwise, return the original.
// Time: O(n), Space: O(n)

String compress(String s) {
  // TODO: Implement this function
  // Hint: Iterate once, count consecutive characters; build with StringBuffer
  throw UnimplementedError('compress not implemented yet');
}

void main() {
  // Test case 1: Compression is shorter
  assert(compress('aabcccccaaa') == 'a2b1c5a3', 'Test 1 failed: "aabcccccaaa" should compress to "a2b1c5a3"');

  // Test case 2: Compression is longer, return original
  assert(compress('abca') == 'abca', 'Test 2 failed: "abca" should return "abca" (original)');

  // Test case 3: Empty string
  assert(compress('') == '', 'Test 3 failed: empty string should return empty');

  // Test case 4: Single character
  assert(compress('a') == 'a', 'Test 4 failed: single char should return original');

  // Test case 5: All same character
  assert(compress('aaaa') == 'a4', 'Test 5 failed: "aaaa" should compress to "a4"');

  // Test case 6: No consecutive repeats
  assert(compress('abcd') == 'abcd', 'Test 6 failed: "abcd" should return "abcd" (original)');

  print('All tests passed for String Compression!');
}
