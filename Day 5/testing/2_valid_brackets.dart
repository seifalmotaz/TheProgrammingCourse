// Problem 2: Valid Brackets
// Goal: Given a string s containing only '()[]{}', determine if the string is valid.
// A string is valid if open brackets are closed by the same type in correct order.
// Time: O(n), Space: O(n)

bool isValidBrackets(String s) {
  // TODO: Implement this function
  // Hint: Use a List<String> as a stack. Push on open; on close, check top matches
  throw UnimplementedError('isValidBrackets not implemented yet');
}

void main() {
  // Test case 1: Simple valid
  assert(isValidBrackets('()') == true, 'Test 1 failed: "()" should be valid');

  // Test case 2: Multiple valid brackets
  assert(isValidBrackets('()[]{}') == true,
      'Test 2 failed: "()[]{}" should be valid');

  // Test case 3: Invalid - wrong type
  assert(isValidBrackets('(]') == false, 'Test 3 failed: "(]" should be invalid');

  // Test case 4: Invalid - wrong order
  assert(isValidBrackets('([)]') == false,
      'Test 4 failed: "([)]" should be invalid');

  // Test case 5: Nested valid
  assert(isValidBrackets('{[]}') == true,
      'Test 5 failed: "{[]}" should be valid');

  // Test case 6: Empty string
  assert(isValidBrackets('') == true,
      'Test 6 failed: empty string should be valid');

  // Test case 7: Only opening brackets
  assert(isValidBrackets('(((') == false,
      'Test 7 failed: "(((" should be invalid');

  print('All tests passed for Valid Brackets!');
}
