<h2><a href="https://leetcode.com/problems/longest-common-prefix">14. Longest Common Prefix</a></h2><h3>Easy</h3><hr><p>Write a function to find the longest common prefix string amongst an array of strings.</p>

<p>If there is no common prefix, return an empty string <code>&quot;&quot;</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> strs = [&quot;flower&quot;,&quot;flow&quot;,&quot;flight&quot;]
<strong>Output:</strong> &quot;fl&quot;
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> strs = [&quot;dog&quot;,&quot;racecar&quot;,&quot;car&quot;]
<strong>Output:</strong> &quot;&quot;
<strong>Explanation:</strong> There is no common prefix among the input strings.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= strs.length &lt;= 200</code></li>
	<li><code>0 &lt;= strs[i].length &lt;= 200</code></li>
	<li><code>strs[i]</code> consists of only lowercase English letters if it is non-empty.</li>
</ul>

---
<h3>한국어</h3>

<pre>
* 문제
주어진 문자열 배열에서 모든 문자열에 대해 공통으로 나타나는 접두사를 구하는 문제입니다.
만약 공통 접두사가 없다면 빈 문자열을 반환합니다.

* 조건
1. 1 <= strs.length <= 200
2. 0 <= strs[i].length <= 200
3. strs[i]는 영어 대소문자 알파벳으로만 구성됩니다.

* 예시
예제 1
	입력: ["flower","flow","flight"]
	출력: "fl"
	설명: 모든 문자열에 대해 "fl"이 공통 접두사입니다.

예제 2
	입력: ["dog","racecar","car"]
	출력: ""
	설명: 공통 접두사가 없으므로 빈 문자열이 반환됩니다.
</pre>

---
<h3>시간복잡도</h3>
while문에따라서 짧을경우 O(nm) 길경우 O(nm²)
