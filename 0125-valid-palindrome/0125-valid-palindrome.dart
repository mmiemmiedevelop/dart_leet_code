class Solution {
  bool isPalindrome(String s) {
    String rm = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    String toLower = rm.toLowerCase();

    for (int i = 0, j = toLower.length - 1; i < j; i++, j--) {
      if (toLower[i] != toLower[j]) {
        return false;
      }
    }
    return true;
  }
}
