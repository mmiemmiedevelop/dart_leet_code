class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';// 예외처리

    String returnValue = strs[0];// 기준 String

    for (int i = 1; i < strs.length; i++) {// 1번째 부터 시작(0은 기준 문자열)
      while (!strs[i].startsWith(returnValue)) {// 현재 문자열이 returnValue로 시작하지 않는 "동안" 돌아간다
        returnValue = returnValue.substring(0, returnValue.length - 1);// 시작(0)부터 끝까지 문자열 자르기
        if (returnValue.isEmpty) return '';
      }
    }

    return returnValue;
  }
}
