class Solution {
  bool wordPattern(String pattern, String s) {
    // pattern을 문자 리스트로 변환
    final words = s.trim().split(RegExp(r'\s+'));
    //word와 pattern의 길이가 다르면 false
    if (pattern.length != words.length) return false;

    // 패턴과 단어의 매핑을 저장할 맵
    Map<String, String> map = {};
    Map<String, String> reverseMap = {};
    // 순회하면서 매핑이 일관적인지 체크
    for (int i = 0; i < pattern.length; i++) {
      String char = pattern[i];
      String word = words[i];

      if (map.containsKey(char)) {
        if (map[char] != word) {
          return false;
        }
      } else {
        if (reverseMap.containsKey(word)) return false;
        map[char] = word;
        reverseMap[word] = char;
      }
    }
    return true;
  }
}
