class Solution {
  int pivotIndex(List<int> nums) {
    //if (nums.isEmpty) return -1;

    //int totalSum = nums.reduce((a, b) => a + b);
    int totalSum = 0; 
    for (int num in nums) {
      totalSum += num;
    }
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