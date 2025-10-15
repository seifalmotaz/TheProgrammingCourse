// Problem 4: Merge Two Sorted Arrays
// Goal: Given two sorted integer arrays a and b,
// return a new sorted array that merges both.
// Time: O(a.length + b.length), Space: O(a.length + b.length)

List<int> mergeSorted(List<int> a, List<int> b) {
  // TODO: Implement this function
  // Hint: Two-pointer technique; avoid ..sort() on concatenation
  throw UnimplementedError('mergeSorted not implemented yet');
}

void main() {
  // Test case 1: Basic merge
  assert(
    _listsEqual(mergeSorted([1, 3, 5], [2, 4, 6]), [1, 2, 3, 4, 5, 6]),
    'Test 1 failed: [1,3,5] and [2,4,6] should merge to [1,2,3,4,5,6]',
  );

  // Test case 2: With duplicates
  assert(
    _listsEqual(mergeSorted([1, 2, 2], [2, 2, 3]), [1, 2, 2, 2, 2, 3]),
    'Test 2 failed: [1,2,2] and [2,2,3] should merge to [1,2,2,2,2,3]',
  );

  // Test case 3: One empty array
  assert(_listsEqual(mergeSorted([], [1, 2, 3]), [1, 2, 3]), 'Test 3 failed: [] and [1,2,3] should merge to [1,2,3]');

  // Test case 4: Both empty
  assert(_listsEqual(mergeSorted([], []), []), 'Test 4 failed: [] and [] should merge to []');

  // Test case 5: Negative numbers
  assert(
    _listsEqual(mergeSorted([-3, -1, 2], [-2, 0, 4]), [-3, -2, -1, 0, 2, 4]),
    'Test 5 failed: negative numbers case',
  );

  // Test case 6: All elements from first array come first
  assert(
    _listsEqual(mergeSorted([1, 2, 3], [4, 5, 6]), [1, 2, 3, 4, 5, 6]),
    'Test 6 failed: [1,2,3] and [4,5,6] should merge to [1,2,3,4,5,6]',
  );

  print('All tests passed for Merge Sorted Arrays!');
}

// Helper function to compare lists
bool _listsEqual(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
