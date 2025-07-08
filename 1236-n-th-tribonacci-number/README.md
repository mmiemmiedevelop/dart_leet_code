<h2><a href="https://leetcode.com/problems/n-th-tribonacci-number">1236. N-th Tribonacci Number</a></h2><h3>Easy</h3><hr><p>The Tribonacci sequence T<sub>n</sub> is defined as follows:&nbsp;</p>

<p>T<sub>0</sub> = 0, T<sub>1</sub> = 1, T<sub>2</sub> = 1, and T<sub>n+3</sub> = T<sub>n</sub> + T<sub>n+1</sub> + T<sub>n+2</sub> for n &gt;= 0.</p>

<p>Given <code>n</code>, return the value of T<sub>n</sub>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> n = 4
<strong>Output:</strong> 4
<strong>Explanation:</strong>
T_3 = 0 + 1 + 1 = 2
T_4 = 1 + 1 + 2 = 4
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> n = 25
<strong>Output:</strong> 1389537
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= n &lt;= 37</code></li>
	<li>The answer is guaranteed to fit within a 32-bit integer, ie. <code>answer &lt;= 2^31 - 1</code>.</li>
</ul>



---
<h3>한국어</h3>

* 문제
n번째 Tribonacci 수를 구하는 문제입니다.
Tribonacci 수열은 초기 값이 T0 = 0, T1 = 1, T2 = 1로 시작하며,
Tn = T(n-1) + T(n-2) + T(n-3)로 정의됩니다.

* 조건
1. 0 <= n <= 37
2. answer <= 2^31 - 1.

* 예시
예제 1:
	입력: n = 4
	출력: 4
	설명: T3까지 계산하면 [0, 1, 1, 2, 4]가 됩니다.

예제 2:
	입력: n = 25
	출력: 1389537

---
<h3>시간복잡도</h3>
<p>반복문 사용했기때문에 O(n)</p>


---
<h3>🐯한마디</h3>
<p>피보나치와 다르게 3번째까지 누적해서 더하는 문제임 그래서 이름이 "트라이"보나치</p>
<p>동적계획법(DP) : 복잡한 문제를 더 작고 독립적인 하위 문제로 나누어 해결</p>
