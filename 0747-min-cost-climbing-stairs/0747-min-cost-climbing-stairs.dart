class Solution {
  int minCostClimbingStairs(List<int> cost) {
    int length = cost.length;
    // 계단 비용 기록 배열(dp) 초기화
    List<int> dp = List.filled(length, 0);
    dp[0] = cost[0];
    dp[1] = cost[1]; //첫번째랑 두번째는 시작점이라 무조껀 시간 들어감

    // dp 배열 채우기(2번째 계단부터 시작)
    for (int i = 2; i < length; i++) {//i-1 한칸전에서올때, i-2 두칸전에서 올때
      if (dp[i - 1] < dp[i - 2]) {
        dp[i] = cost[i] + dp[i - 1];
      } else {
        dp[i] = cost[i] + dp[i - 2];
      }
    }

    // 마지막 계단 비용 추가
    if (dp[length - 1] < dp[length - 2]) {// 적은 비용
      return dp[length - 1];
    } else {
      return dp[length - 2];
    }
  }
}
