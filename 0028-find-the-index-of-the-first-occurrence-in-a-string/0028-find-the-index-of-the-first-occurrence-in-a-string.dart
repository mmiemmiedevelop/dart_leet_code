class Solution {
  int strStr(String haystack, String needle) {
    if (!haystack.contains(needle)) {
      return -1;
  }
  int index = haystack.indexOf(needle);
  return index;
  }
}