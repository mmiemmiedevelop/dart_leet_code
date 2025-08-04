class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];
    int start = 0;//계속변하는 임시변수
    int end = 0;//계속변하는 임시변수

    for (int i = 0; i < nums.length; i++) {
      if (i == nums.length - 1 || nums[i] + 1 != nums[i + 1]) {
        end = i;
        if (start == end) {
          result.add(nums[start].toString());
        } else {
          result.add('${nums[start]}->${nums[end]}');
        }
        start = i + 1;
      }
    }
    return result;
  }
}