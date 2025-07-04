<h2><a href="https://leetcode.com/problems/move-zeroes">283. Move Zeroes</a></h2><h3>Easy</h3><hr><p>Given an integer array <code>nums</code>, move all <code>0</code>&#39;s to the end of it while maintaining the relative order of the non-zero elements.</p>

<p><strong>Note</strong> that you must do this in-place without making a copy of the array.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [0,1,0,3,12]
<strong>Output:</strong> [1,3,12,0,0]
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [0]
<strong>Output:</strong> [0]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you minimize the total number of operations done?


---
<h3>한국어</h3>

* 문제
주어진 정수 배열 nums에서 모든 0을 배열의 끝으로 이동시키고, 
나머지 숫자는 원래의 상대적인 순서를 유지하도록 하세요.
이 작업은 배열을 수정하여 수행해야 하며, 추가적인 배열을 사용하지 않고 수행해야 합니다.

* 조건
1. 1 <= nums.length <= 10^4
2. -2^31 <= nums[i] <= 2^31 - 1 
(2^31 -> int형의 범위) -21억 ~ 21억

* 예시
1. 입력: nums = [0, 1, 0, 3, 12] 출력: [1, 3, 12, 0, 0]
	설명: 모든 0이 배열의 끝으로 이동하고, 나머지 숫자는 순서를 유지합니다.

2. 입력: nums = [0] 출력: [0]
	설명: 배열에 0만 존재할 경우 변하지 않습니다.

---
<h3>시간복잡도</h3>
<p>1단계 앞으로복사 > O(n)</p>
<p>2단계 0채우기 > O(n)</p>
<p>최종 시간복잡도 : O(n)</p>

---
<h3>🐯한마디</h3>
<p>처음에 Time Limit Exceeded가 나왔는데</p>
<pre>
class Solution {
  List<int> moveZeroes(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        print('0넘배열처음${i}'); // 해당 요소 출력
        // 현재 요소가 0인 경우
        print('1넘배열처음${nums}'); // 해당 요소 출력
        nums.removeAt(i); // 해당 요소를 제거
        print('2넘배열처음${nums}'); // 해당 요소 출력
        nums.add(0); // 리스트의 끝에 0을 추가
        print('3넘배열처음${nums}'); // 해당 요소 출력

        i--; // 인덱스를 조정하여 다음 요소를 올바르게 검사 // ❌ 이부분 때문에 무한루프
      }
    }
    return nums;
    }
    }
</pre>
<p>이 경우는 0만 있을경우 무한으로 도는 현상 발생 인덱스 처리때문이였음!</p>
<strong>배열 구조를 바꾸는 동시에 반복문을 돌리는 건 매우 위험</strong>

<p>+아 마크다운 어렵다</p>

