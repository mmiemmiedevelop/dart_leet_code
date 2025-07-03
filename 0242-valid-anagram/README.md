<h2><a href="https://leetcode.com/problems/valid-anagram">242. Valid Anagram</a></h2><h3>Easy</h3><hr><p>Given two strings <code>s</code> and <code>t</code>, return <code>true</code> if <code>t</code> is an <span data-keyword="anagram">anagram</span> of <code>s</code>, and <code>false</code> otherwise.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<div class="example-block">
<p><strong>Input:</strong> <span class="example-io">s = &quot;anagram&quot;, t = &quot;nagaram&quot;</span></p>

<p><strong>Output:</strong> <span class="example-io">true</span></p>
</div>

<p><strong class="example">Example 2:</strong></p>

<div class="example-block">
<p><strong>Input:</strong> <span class="example-io">s = &quot;rat&quot;, t = &quot;car&quot;</span></p>

<p><strong>Output:</strong> <span class="example-io">false</span></p>
</div>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length, t.length &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>s</code> and <code>t</code> consist of lowercase English letters.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> What if the inputs contain Unicode characters? How would you adapt your solution to such a case?</p>



* 문제
두 개의 문자열 s와 t가 주어졌을 때,
t가 s의 애너그램인지 확인하는 함수를 작성하세요.
애너그램은 두 문자열이 같은 문자를 같은 개수만큼 가지고 있지만, 순서는 다른 경우를 말합니다.

* 조건
1. 1 <= s.length, t.length <= 5 * 10^4
2. s와 t는 영어 소문자로만 이루어져 있습니다.

* 예시
1. 입력: s = "anagram", t = "nagaram" 출력: true
	설명: t는 s의 애너그램입니다.

2. 입력: s = "rat", t = "car" 출력: false
	설명: t는 s의 애너그램이 아닙니다.
