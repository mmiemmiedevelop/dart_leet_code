class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) {
      // 길이가 2 이하인 경우 중복 제거할 필요 없음
      return nums.length;
    }
    
    int maxCount = 2; // 최대 2개까지만 허용(초기값)

    for (int i = 2; i < nums.length; i++) {
      if (nums[i] != nums[maxCount - 2]) {
        // 맨처음 비교 기준으로봤을때
        // maxCount - 2번째 인덱스와 현재 인덱스가 다르면
        // 중복이 아니므로 maxCount 위치에 현재 값을 넣는다
        nums[maxCount] = nums[i];
        maxCount++;//다음 위치로 칸 이동 > 그다음 인덱스부터 비교
      }
    }

    return maxCount;
  }
}
