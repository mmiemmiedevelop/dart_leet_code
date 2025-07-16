
//100% 나온코드
class Solution {
  int pivotIndex(List<int> nums) {
    int totalSum = 0;
    for (int i = 0; i < nums.length; i++) {//이부분다름
      totalSum += nums[i];
    }

    int leftSum = 0;
    for (int i = 0; i < nums.length; i++) {//여기부터도 다름
      if (i != 0) {
        leftSum += nums[i - 1];
      }

      totalSum -= nums[i];
      if (leftSum == totalSum) {
        return i;
      }
    }
    return -1;
  }
}

//원래코드
class Solution {
  int pivotIndex(List<int> nums) {
   // if (nums.isEmpty) return -1; >> 필요없음! 문제에서 이미 1이상이라고했슴!ㅠㅠ

    int totalSum = nums.reduce((a, b) => a + b);//이부분다름
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
