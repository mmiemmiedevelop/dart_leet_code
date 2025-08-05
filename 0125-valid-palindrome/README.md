<h2><a href="https://leetcode.com/problems/valid-palindrome">125. Valid Palindrome</a></h2><h3>Easy</h3><hr><p>A phrase is a <strong>palindrome</strong> if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.</p>

<p>Given a string <code>s</code>, return <code>true</code><em> if it is a <strong>palindrome</strong>, or </em><code>false</code><em> otherwise</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> s = &quot;A man, a plan, a canal: Panama&quot;
<strong>Output:</strong> true
<strong>Explanation:</strong> &quot;amanaplanacanalpanama&quot; is a palindrome.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> s = &quot;race a car&quot;
<strong>Output:</strong> false
<strong>Explanation:</strong> &quot;raceacar&quot; is not a palindrome.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre>
<strong>Input:</strong> s = &quot; &quot;
<strong>Output:</strong> true
<strong>Explanation:</strong> s is an empty string &quot;&quot; after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 2 * 10<sup>5</sup></code></li>
	<li><code>s</code> consists only of printable ASCII characters.</li>
</ul>

---
<h3>한국어</h3>

<pre>
* 문제
주어진 문자열이 팰린드롬인지 확인하는 문제입니다.
팰린드롬이란, 앞에서 읽으나 뒤에서 읽으나 동일한 문자열을 의미합니다.
대소문자와 공백을 무시하고, 알파벳과 숫자만 비교합니다.

* 조건
1. 문자열은 길이가 1 이상 2^5 이하입니다.
2. 문자열은 알파벳과 숫자만 포함될 수 있습니다.

* 예시
예제 1
	입력: "A man, a plan, a canal: Panama"
	출력: true
	설명: 공백과 구두점을 제외하고 문자열은 "amanaplanacanalpanama"로 팰린드롬입니다.

예제 2:
	입력: "race a car"
	출력: false
	설명: 공백을 제외해도 "raceacar"는 팰린드롬이 아닙니다.
	
</pre>


---
<h3>다른풀이</h3>

<pre>
bool isPalindrome(String s) {
  // 알파벳과 숫자만 남기고, 소문자로 변환
  String filtered = '';
  for (var c in s.split('')) {
    if (RegExp(r'[a-zA-Z0-9]').hasMatch(c)) {
      filtered += c.toLowerCase();
    }
  }
  // "A man, a plan, a canal: Panama"
  // "amanaplanacanalpanama"
  
  // 양쪽 끝에서부터 비교
  int left = 0;
  int right = filtered.length - 1;
  while (left < right) {
    if (filtered[left] != filtered[right]) {
      return false;
    }
    left++;
    right--;
  }
  
  return true;
}

	
</pre>

