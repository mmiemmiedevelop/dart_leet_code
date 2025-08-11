class Solution {
  String reverseVowels(String s) {
    // aeiou 만 바꾸기
    final vowels = 'aeiouAEIOU';
    final chars = s.split('');// 하나씩 쪼개기
    int left = 0;
    int right = chars.length - 1;
    
    while (left < right) {
      // 왼쪽에서부터 aeiou 찾기
      while (left < right && !vowels.contains(chars[left])) {
        left++; // 왼쪽 포인터 이동
      }
      while (left < right && !vowels.contains(chars[right])) {
        right--; // 오른쪽 포인터 이동
      }

      if (left < right) {
        // aeiou 를 찾았을 때 서로 바꾸기
        final temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;
        left++;
        right--;
      }
    }
    return chars.join('');
  }
}