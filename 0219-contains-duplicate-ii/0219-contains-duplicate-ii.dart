class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    // 해시: 중복된 숫자들의 인덱스를 저장
    Map<int, int> indexMap = {};
    for (int i = 0; i < nums.length; i++) {
      //현재 숫자가 해시맵에 존재하고 저장된 인덱스와 현재 인덱스가 같은 케이스 찾기
      if (indexMap.containsKey(nums[i])) {
        if (i - indexMap[nums[i]]! <= k) {
          //i-j <= k
          return true; // 중복된 숫자가 k 이내에 존재
        }
      }
      // 현재 숫자의 인덱스를 해시맵에 저장(앞에서 안걸려서)
      indexMap[nums[i]] = i;
    }
    return false;
  }
}
