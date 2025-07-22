class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    //set으로 변경
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    //set의 차집합
    Set<int> diff1 = set1.difference(set2);
    Set<int> diff2 = set2.difference(set1);
    return [diff1.toList(), diff2.toList()];
  }
}