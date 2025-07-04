class Solution {
  List<int> moveZeroes(List<int> nums) {
    int insertPos = 0;

    // 0이 아닌 값을 앞으로 옮긴다
    for (int num in nums) {
      if (num != 0) {
        nums[insertPos++] = num;
      }
    }

    // 나머지 뒷부분을 0으로 채운다
    for (int i = insertPos; i < nums.length; i++) {
      nums[i] = 0;
    }

    return nums;
  }
}
