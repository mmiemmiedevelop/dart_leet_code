<h2><a href="https://leetcode.com/problems/majority-element">169. Majority Element</a></h2><h3>Easy</h3><hr><p>Given an array <code>nums</code> of size <code>n</code>, return <em>the majority element</em>.</p>

<p>The majority element is the element that appears more than <code>&lfloor;n / 2&rfloor;</code> times. You may assume that the majority element always exists in the array.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [3,2,3]
<strong>Output:</strong> 3
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [2,2,1,1,1,2,2]
<strong>Output:</strong> 2
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == nums.length</code></li>
	<li><code>1 &lt;= n &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow-up:</strong> Could you solve the problem in linear time and in <code>O(1)</code> space?


---
<h3>한국어</h3>

<pre>
* 문제
주어진 배열에서 최빈값(majority element)을 찾는 문제입니다.
최빈값은 배열의 원소 중 절반 초과(more than)의 개수를 차지하는 원소를 의미합니다.
이 문제에서 당신은 최빈값을 찾아야 하며, 최빈값이 존재하는 것이 보장됩니다.

* 조건
1. 1 <= nums.length <= 5 * 10^4
2. -10^9 <= nums[i] <= 10^9

* 예시
예제 1
	입력: nums = [3,2,3]
	출력: 3
	설명: 3이 배열에서 2번 등장하여 배열의 절반 이상을 차지합니다.

예제 2
	입력: nums = [2,2,1,1,1,2,2]
	출력: 2
	설명: 2가 배열에서 4번 등장하여 배열의 절반 이상을 차지합니다.
	
	[2,2,3,1,1,1]
</pre>


---
<h3>시간복잡도</h3>
<p>반복문 사용했기때문에 O(n)</p>

---
<h3>🐯한마디</h3>
<p><strong>Boyer–Moore 다수결 알고리즘</strong>이라고 한다</p>
<p>검색을 수행할 때 두 접근법이 제안하는 값 중 최대값만큼 패턴을 이동하는 알고리즘</p>
