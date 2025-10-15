// Problem 5: Most Frequent Word
// Goal: Given a text, return the most frequent word (case-insensitive).
// Words consist of letters (a–z, A–Z). Ignore punctuation and numbers.
// If there's a tie, return the lexicographically smallest word.
// Time: O(n), Space: O(distinct words)

String mostFrequentWord(String text) {
  // TODO: Implement this function
  // Hint: Normalize to lowercase; extract words with RegExp; count with Map<String,int>
  throw UnimplementedError('mostFrequentWord not implemented yet');
}

void main() {
  // Test case 1: Tie between words - return lexicographically smallest
  assert(mostFrequentWord('To be, or not to be.') == 'be', 'Test 1 failed: should return "be" (tie between be and to)');

  // Test case 2: Case insensitive
  assert(mostFrequentWord('Hello hello HELLO!') == 'hello', 'Test 2 failed: should return "hello" (case insensitive)');

  // Test case 3: Clear winner
  assert(
    mostFrequentWord('the quick brown fox jumps over the lazy dog the') == 'the',
    'Test 3 failed: should return "the"',
  );

  // Test case 4: Empty string
  assert(mostFrequentWord('') == '', 'Test 4 failed: empty string should return ""');

  // Test case 5: Only punctuation
  assert(mostFrequentWord(r'!@#$%^&*()') == '', 'Test 5 failed: only punctuation should return ""');

  // Test case 6: Single word
  assert(mostFrequentWord('word') == 'word', 'Test 6 failed: single word should return that word');

  // Test case 7: With numbers (should be ignored)
  assert(mostFrequentWord('test123 test 456test test') == 'test', 'Test 7 failed: should extract and count "test"');

  print('All tests passed for Most Frequent Word!');
}
