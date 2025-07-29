import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    //0부터 k-1까지의 합
    double sum = 0;
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }

    //배열의 합 갱신
    double maxSum = sum;
    for (int i = k; i < nums.length; i++) {
      sum += nums[i] - nums[i - k];
      maxSum = max(maxSum, sum);//최대만 남기기
    }
    return maxSum / k;
  }
  
}
