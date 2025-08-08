<h2><a href="https://leetcode.com/problems/contains-duplicate-ii">219. Contains Duplicate II</a></h2><h3>Easy</h3><hr><p>Given an integer array <code>nums</code> and an integer <code>k</code>, return <code>true</code> <em>if there are two <strong>distinct indices</strong> </em><code>i</code><em> and </em><code>j</code><em> in the array such that </em><code>nums[i] == nums[j]</code><em> and </em><code>abs(i - j) &lt;= k</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> nums = [1,2,3,1], k = 3
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> nums = [1,0,1,1], k = 1
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre>
<strong>Input:</strong> nums = [1,2,3,1,2,3], k = 2
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
	<li><code>0 &lt;= k &lt;= 10<sup>5</sup></code></li>
</ul>



---
<h3>한국어</h3>


* 문제
정수 배열 nums와 정수 k가 주어질 때, 같은 값을 가지는 두 인덱스 i와 j에 대해 
abs(i - j) <= k를 만족하는 경우가 있는지 확인하세요.
만약 조건을 만족하는 인덱스 쌍이 있다면 true를 반환하고, 그렇지 않으면 false를 반환하세요.

abs() <- 숫자의 절대값을 반환하는 함수

* 조건
1 <= nums.length <= 10^5
-10^9 <= nums[i] <= 10^9
0 <= k <= 10^5

* 예시
예제 1
	입력: nums = [1, 2, 3, 1] k = 3
	출력: true
	설명: nums[0]와 nums[3]의 값이 동일하며, abs(0 - 3) = 3으로 조건을 만족합니다.

예제 2:
	입력: nums = [1, 0, 1, 1] k = 1
	출력: true
	설명: nums[2]와 nums[3]의 값이 동일하며, abs(2 - 3) = 1로 조건을 만족합니다.
	
예제 3:
	입력: nums = [1, 2, 3, 1, 2, 3] k = 2
	출력: false
	설명: 중복 값들은 존재하지만, 조건 abs(i - j) <= 2를 만족하는 쌍이 없습니다.

 
