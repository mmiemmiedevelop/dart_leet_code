<h2><a href="https://leetcode.com/problems/best-time-to-buy-and-sell-stock">121. Best Time to Buy and Sell Stock</a></h2><h3>Easy</h3><hr><p>You are given an array <code>prices</code> where <code>prices[i]</code> is the price of a given stock on the <code>i<sup>th</sup></code> day.</p>

<p>You want to maximize your profit by choosing a <strong>single day</strong> to buy one stock and choosing a <strong>different day in the future</strong> to sell that stock.</p>

<p>Return <em>the maximum profit you can achieve from this transaction</em>. If you cannot achieve any profit, return <code>0</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> prices = [7,1,5,3,6,4]
<strong>Output:</strong> 5
<strong>Explanation:</strong> Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre>
<strong>Input:</strong> prices = [7,6,4,3,1]
<strong>Output:</strong> 0
<strong>Explanation:</strong> In this case, no transactions are done and the max profit = 0.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= prices.length &lt;= 10<sup>5</sup></code></li>
	<li><code>0 &lt;= prices[i] &lt;= 10<sup>4</sup></code></li>
</ul>


---
<h3>한국어</h3>

* 문제
길이 n인 정수 배열 prices가 주어집니다. prices[i]는 i번째 날에 해당 주식의 가격을 나타냅니다.

한 번의 거래(한 주를 매수하고, 이후의 다른 하루에 매도)로 얻을 수 있는 최대 이익을 구하세요.
이익을 낼 수 없는 경우에는 0을 반환합니다.

* 조건
1. 1 <= prices.length <= 10^5
2. 0 <= prices[i] <= 10^4

* 예시
예제 1
	입력: prices = [7,1,5,3,6,4]
	출력: 5
	설명: 주식을 1에 사고 6에 팔면 이익이 5가 됩니다. (6 - 1 = 5)

예제 2
	입력: prices = [7,6,4,3,1]
	출력: 0
	설명: 이 경우 주식을 사서 팔 수 있는 이익이 없습니다. (최대 이익이 0)

---
<h3>다른풀이</h3>



<pre>
class Solution {
    int maxProfit(List<int> prices) {
        int minPrice = double.maxFinite.toInt(); // 최대값으로 초기화
        int maxProfit = 0; // 최대 이익 초기화
        
        for (int price in prices) {
            if (price < minPrice) {
                minPrice = price; // 최소 가격 업데이트
            } else {
                maxProfit = max(maxProfit, price - minPrice); // 최대 이익 계산
            }
        }
        
        return maxProfit;
    }
}
		    
	    </pre>

---
<h3>시간복잡도</h3>
O(n)

