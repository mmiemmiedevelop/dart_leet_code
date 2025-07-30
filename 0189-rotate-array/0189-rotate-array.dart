class Solution {
  void rotate(List<int> nums, int k) {
    int l = nums.length;
    List<int> result;
    k = k % l; // 나머지만큼만 돌면됌

    List<int> subList = nums.sublist(l - k); // 짤라낸만큼
    List<int> remain = nums.sublist(0, l - k); // 짤라내지 않은 나머지
    result = subList + remain;

    nums.clear();
    nums.addAll(result);
  }
}
