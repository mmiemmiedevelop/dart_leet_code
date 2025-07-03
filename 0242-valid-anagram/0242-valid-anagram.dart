class Solution {
  bool isAnagram(String s, String t) {
    var splitS = s.split('');
    var splitT = t.split('');
    splitS.sort();
    splitT.sort();
    var sortedS = splitS.join('');
    var sortedT = splitT.join('');
    if (sortedS == sortedT) {
      return true;
    } else {
      return false;
    }
  }
}