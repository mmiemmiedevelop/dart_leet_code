class Solution {
  int pivotIndex(List<int> nums) {
   // if (nums.isEmpty) return -1;>> 불필요 문제에서 이미 1이상이라고 주어짐(문제를 잘읽자ㅠ.ㅠ)

    int totalSum = nums.reduce((a, b) => a + b);
    int leftSum = 0;
    for (int i = 0; i < nums.length; i++) {
      int rightSum = totalSum - leftSum - nums[i];
      if (leftSum == rightSum) {
        return i;
      }
      leftSum += nums[i];
    }
    return -1;
  }
}
