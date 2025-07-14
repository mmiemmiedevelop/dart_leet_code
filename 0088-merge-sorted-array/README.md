<h2><a href="https://leetcode.com/problems/merge-sorted-array">88. Merge Sorted Array</a></h2><h3>Easy</h3><hr><p>You are given two integer arrays <code>nums1</code> and <code>nums2</code>, sorted in <strong>non-decreasing order</strong>, and two integers <code>m</code> and <code>n</code>, representing the number of elements in <code>nums1</code> and <code>nums2</code> respectively.</p>

<p><strong>Merge</strong> <code>nums1</code> and <code>nums2</code> into a single array sorted in <strong>non-decreasing order</strong>.</p>

<p>The final sorted array should not be returned by the function, but instead be <em>stored inside the array </em><code>nums1</code>. To accommodate this, <code>nums1</code> has a length of <code>m + n</code>, where the first <code>m</code> elements denote the elements that should be merged, and the last <code>n</code> elements are set to <code>0</code> and should be ignored. <code>nums2</code> has a length of <code>n</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
<strong>Output:</strong> [1,2,2,3,5,6]
<strong>Explanation:</strong> The arrays we are merging are [1,2,3] and [2,5,6].
The result of the merge is [<u>1</u>,<u>2</u>,2,<u>3</u>,5,6] with the underlined elements coming from nums1.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> nums1 = [1], m = 1, nums2 = [], n = 0
<strong>Output:</strong> [1]
<strong>Explanation:</strong> The arrays we are merging are [1] and [].
The result of the merge is [1].
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre>
<strong>Input:</strong> nums1 = [0], m = 0, nums2 = [1], n = 1
<strong>Output:</strong> [1]
<strong>Explanation:</strong> The arrays we are merging are [] and [1].
The result of the merge is [1].
Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>nums1.length == m + n</code></li>
	<li><code>nums2.length == n</code></li>
	<li><code>0 &lt;= m, n &lt;= 200</code></li>
	<li><code>1 &lt;= m + n &lt;= 200</code></li>
	<li><code>-10<sup>9</sup> &lt;= nums1[i], nums2[j] &lt;= 10<sup>9</sup></code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up: </strong>Can you come up with an algorithm that runs in <code>O(m + n)</code> time?</p>


---
<h3>한국어</h3>

* 문제
정렬된 배열 nums1과 nums2가 주어지며, nums1은 충분한 공간을 할당받고 있습니다.
nums1의 초기 크기는 m이고, nums2의 크기는 n입니다.
두 배열을 합쳐서 nums1에 정렬된 형태로 저장해야 합니다.

* 조건
1. 0 <= m, n <= 200
2. 1 <= m + n <= 200
3. -10^9 <= nums1[i], nums2[i] <= 10^9

* 예시
예제 1
	입력: nums1 = [1,2,3,-,-,-], m = 3, nums2 = [2,5,6], n = 3
	출력: nums1 = [1,2,2,3,5,6]
	설명: nums1의 처음 3개의 요소는 [1,2,3]이고, nums2는 [2,5,6]입니다. 두 배열을 합치면 [1,2,2,3,5,6]가 됩니다.

예제 2:
	입력: nums1 = [1], m = 1, nums2 = [], n = 0
	출력: nums1 = [1]
	설명: nums2가 비어 있으므로 nums1은 변경되지 않습니다.

예제 3:
	입력: nums1 = [ - ], m = 0, nums2 = [1], n = 1
	출력: nums1 = [1]
	설명: nums1이 비어 있고, nums2의 요소가 nums1으로 복사됩니다.

 ---
<h3>다른풀이</h3>

class Solution {
    void merge(List<int> nums1, int m, List<int> nums2, int n) {
        int i = m - 1; // nums1의 마지막 유효 요소 인덱스
        int j = n - 1; // nums2의 마지막 요소 인덱스
        int k = m + n - 1; // nums1의 마지막 인덱스
        
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k--] = nums1[i--]; // nums1의 요소를 사용
            } else {
                nums1[k--] = nums2[j--]; // nums2의 요소를 사용
            }
        }
        
        // nums2에 남은 요소가 있는 경우 복사
        while (j >= 0) {
            nums1[k--] = nums2[j--];
        }
    }
}

- **포인터 초기화**: `i`, `j`, `k`를 각각 `nums1`의 유효 요소, `nums2`, `nums1`의 마지막 인덱스로 초기화합니다.
- **비교 및 삽입**: 두 포인터를 사용하여 각 배열의 요소를 비교하고, 더 큰 값을 `nums1`의 끝으로 삽입합니다.
- **남은 요소 복사**: `nums2`에 남아 있는 요소가 있을 경우 이를 `nums1`으로 복사합니다. `nums1`의 유효 요소가 남아 있다면 그 요소는 이미 적절한 위치에 존재하므로, 별도로 처리할 필요가 없습니다.
