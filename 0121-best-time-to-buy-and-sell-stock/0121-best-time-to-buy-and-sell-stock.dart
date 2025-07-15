class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      // 현재 가격이 최소 가격보다 크면 이익 계산
      if (prices[i] > minPrice) {
        int currentProfit = prices[i] - minPrice;
        maxProfit = maxProfit > currentProfit ? maxProfit : currentProfit;
      } else {
        // 현재 가격이 최소 가격보다 작으면 최소 가격 업데이트
        minPrice = prices[i];
      }
    }

    return maxProfit;
  }
}
