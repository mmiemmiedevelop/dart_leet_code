class Solution {
  int majorityElement(List<int> nums) {
    if (nums.length == 1) {// 전처리
      return nums[0];
    }

    int returnValue = nums[0];// 첫번째 벨류
    int count = 1;
    for (int i = 1; i < nums.length; i++) {// 전체 for문
      if (nums[i] == returnValue) {// 같은 벨류면 카운트 증가
        count++;
      } else {        
        count--;// 다른 벨류면 카운트 감소
        if (count == 0) {// ** 카운트가 0이 되면 새로운 벨류로 변경
          returnValue = nums[i];
          count = 1;// 초기화
        }
      }
    }
    return returnValue; 
  }
}