class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> resultMap = {};
    Set<int> resultSet = {};// set 으로 유니크 특성 사용
    for (int num in arr) {
      // 현재 숫자의 빈도수 증가
      resultMap[num] = (resultMap[num] ?? 0) + 1;
    }
    // 빈도수의 고유성 검사
    for (int frequency in resultMap.values) {
      if (!resultSet.add(frequency)) {
        return false;
      }
    }
    return true;
  }
}