class Solution {
  bool isIsomorphic(String s, String t) {
    // 두개의 맵을 사용
    Map<String, String> mapS = {};
    Map<String, String> mapT = {};

    // 순회하면서 맵핑되는지 확인
    for (int i = 0; i < s.length; i++) {
      String charS = s[i];
      String charT = t[i];

      if (mapS.containsKey(charS)) {
        if (mapS[charS] != charT) {
          return false;
        }
      } else {
        if (mapT.containsKey(charT)) return false;
        mapS[charS] = charT;
        mapT[charT] = charS;
      }
    }

    return true;
  }
}
