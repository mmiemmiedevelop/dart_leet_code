<h2><a href="https://leetcode.com/problems/summary-ranges">228. Summary Ranges</a></h2><h3>Easy</h3><hr><p>You are given a <strong>sorted unique</strong> integer array <code>nums</code>.</p>

<p>A <strong>range</strong> <code>[a,b]</code> is the set of all integers from <code>a</code> to <code>b</code> (inclusive).</p>

<p>Return <em>the <strong>smallest sorted</strong> list of ranges that <strong>cover all the numbers in the array exactly</strong></em>. That is, each element of <code>nums</code> is covered by exactly one of the ranges, and there is no integer <code>x</code> such that <code>x</code> is in one of the ranges but not in <code>nums</code>.</p>

<p>Each range <code>[a,b]</code> in the list should be output as:</p>

<ul>
	<li><code>&quot;a-&gt;b&quot;</code> if <code>a != b</code></li>
	<li><code>&quot;a&quot;</code> if <code>a == b</code></li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> nums = [0,1,2,4,5,7]
<strong>Output:</strong> [&quot;0-&gt;2&quot;,&quot;4-&gt;5&quot;,&quot;7&quot;]
<strong>Explanation:</strong> The ranges are:
[0,2] --&gt; &quot;0-&gt;2&quot;
[4,5] --&gt; &quot;4-&gt;5&quot;
[7,7] --&gt; &quot;7&quot;
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> nums = [0,2,3,4,6,8,9]
<strong>Output:</strong> [&quot;0&quot;,&quot;2-&gt;4&quot;,&quot;6&quot;,&quot;8-&gt;9&quot;]
<strong>Explanation:</strong> The ranges are:
[0,0] --&gt; &quot;0&quot;
[2,4] --&gt; &quot;2-&gt;4&quot;
[6,6] --&gt; &quot;6&quot;
[8,9] --&gt; &quot;8-&gt;9&quot;
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= nums.length &lt;= 20</code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
	<li>All the values of <code>nums</code> are <strong>unique</strong>.</li>
	<li><code>nums</code> is sorted in ascending order.</li>
</ul>


<p><strong class="example">한국어</strong></p>

문제  
정렬된 고유한 정수 배열 nums가 주어졌을 때, 연속된 숫자들을 하나의 범위로 묶어 문자열 형태로 반환하세요.  
각 범위는 "a->b"의 형식이며, 숫자가 하나만 포함될 경우 해당 숫자 "a"를 반환합니다.  
  
조건  
0 <= nums.length <= 20  
-2^31 <= nums[i] <= 2^31 - 1  
모든 nums의 원소는 고유하며, 오름차순으로 정렬되어 있습니다.  
  
예시  
예제 1  
	입력: nums = [0, 1, 2, 4, 5, 7]  
	출력: ["0->2", "4->5", "7"]  
	설명:   
		0, 1, 2는 연속적이므로 "0->2"로 묶입니다.  
		4, 5는 연속적이므로 "4->5"로 묶입니다.  
		7은 혼자이므로 "7"로 나타냅니다.  
  
예제 2:  
	입력: nums = [0, 2, 3, 4, 6, 8, 9]  
	출력: ["0", "2->4", "6", "8->9"]  
	설명:  
		2, 3, 4는 연속적이므로 "2->4"로 묶입니다.  
		8, 9는 연속적이므로 "8->9"로 묶입니다.  
	  
예제 3:  
	입력: nums = []  
	출력: []  
	설명: 배열이 비어 있으므로 빈 배열을 반환합니다.  
