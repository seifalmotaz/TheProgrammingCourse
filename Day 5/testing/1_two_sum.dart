// Problem 1: Two Sum (Indices)
// Goal: Given an array of integers `nums` and an integer `target`,
// return the indices of the two numbers such that they add up to `target`.
// Time: O(n), Space: O(n)

List<int> twoSum(List<int> nums, int target) {
  // TODO: Implement this function
  // Hint: Use a Map<int,int> to store value → index while you iterate once
  throw UnimplementedError('twoSum not implemented yet');
}

void main() {
  // Test case 1: Basic case
  // Test case 1: Basic case (expect indices [0,1])
  final r1 = twoSum([2, 7, 11, 15], 9);
  assert(r1.length == 2 && r1.toSet().containsAll([0, 1]),
      'Test 1 failed: [2,7,11,15] with target 9 should return indices [0,1]');

  // Test case 2: Different indices (expect [1,2])
  final r2 = twoSum([3, 2, 4], 6);
  assert(r2.length == 2 && r2.toSet().containsAll([1, 2]),
      'Test 2 failed: [3,2,4] with target 6 should return indices [1,2]');

  // Test case 3: Negative numbers (expect [2,4])
  final r3 = twoSum([-1, -2, -3, -4, -5], -8);
  assert(r3.length == 2 && r3.toSet().containsAll([2, 4]),
      'Test 3 failed: negative numbers case should return indices [2,4]');

  // Test case 4: With duplicates (expect [0,1])
  final r4 = twoSum([3, 3], 6);
  assert(r4.length == 2 && r4.toSet().containsAll([0, 1]),
      'Test 4 failed: [3,3] with target 6 should return indices [0,1]');

  print('All tests passed for Two Sum!');
}
