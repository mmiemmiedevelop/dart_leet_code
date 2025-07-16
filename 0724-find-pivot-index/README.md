<h2><a href="https://leetcode.com/problems/find-pivot-index">724. Find Pivot Index</a></h2><h3>Easy</h3><hr><p>Given an array of integers <code>nums</code>, calculate the <strong>pivot index</strong> of this array.</p>

<p>The <strong>pivot index</strong> is the index where the sum of all the numbers <strong>strictly</strong> to the left of the index is equal to the sum of all the numbers <strong>strictly</strong> to the index&#39;s right.</p>

<p>If the index is on the left edge of the array, then the left sum is <code>0</code> because there are no elements to the left. This also applies to the right edge of the array.</p>

<p>Return <em>the <strong>leftmost pivot index</strong></em>. If no such index exists, return <code>-1</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> nums = [1,7,3,6,5,6]
<strong>Output:</strong> 3
<strong>Explanation:</strong>
The pivot index is 3.
Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
Right sum = nums[4] + nums[5] = 5 + 6 = 11
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> nums = [1,2,3]
<strong>Output:</strong> -1
<strong>Explanation:</strong>
There is no index that satisfies the conditions in the problem statement.</pre>

<p><strong class="example">Example 3:</strong></p>

<pre>
<strong>Input:</strong> nums = [2,1,-1]
<strong>Output:</strong> 0
<strong>Explanation:</strong>
The pivot index is 0.
Left sum = 0 (no elements to the left of index 0)
Right sum = nums[1] + nums[2] = 1 + -1 = 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-1000 &lt;= nums[i] &lt;= 1000</code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Note:</strong> This question is the same as&nbsp;1991:&nbsp;<a href="https://leetcode.com/problems/find-the-middle-index-in-array/" target="_blank">https://leetcode.com/problems/find-the-middle-index-in-array/</a></p>



---
<h3>한국어</h3>


* 문제
정수 배열 nums가 주어질 때, 피벗 인덱스를 찾아야 합니다.
피벗 인덱스란, 인덱스 i의 왼쪽에 있는 모든 원소의 합과 오른쪽에 있는 모든 원소의 합이 같은 위치를 말합니다.

피벗 인덱스 i를 찾으면 해당 값을 반환하고, 존재하지 않으면 -1을 반환하세요.
만약 피벗 인덱스가 여러 개일 경우 가장 왼쪽에 있는 인덱스를 반환합니다.

* 조건
1. 1≤nums.length≤10^4
2. -1000 <= nums[i] <= 1000

* 예시
1. 입력: nums = [1, 7, 3, 6, 5, 6] 출력: 3
	설명: nums[3]의 왼쪽 합은 11이고 오른쪽 합도 11이므로 피벗 인덱스는 3입니다.

2. 입력: nums = [1, 2, 3] 출력: -1
	설명: 피벗 인덱스가 없습니다.

3. 입력: nums = [2, 1, -1] 출력: 0
	설명: nums[0]의 왼쪽 합은 0이고 오른쪽 합은 0이므로 피벗 인덱스는 0입니다.


---
<h3>시간복잡도</h3>
O(n)


---
<h3>한마디</h3>
어쩌다 궁금해서 관련 블로그 포스팅도함.....
https://onyourm.tistory.com/31


