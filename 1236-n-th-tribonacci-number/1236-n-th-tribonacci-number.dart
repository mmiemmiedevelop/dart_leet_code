class Solution {
  int tribonacci(int n) {
    // 0, 1, 1, 2, 4, 7, 13
    // 이렇게있으면
    // 0번째는 0+1+1
    // 1번째는 0+1+2
    // 2번째는 1+1+2
    // 3번째는 1+2+4
    if (n == 0) return 0;// n이 0이면 0
    if (n == 1 || n == 2) return 1;// "이전 세 값이 충분히 쌓여 있지 않은" 특수한 초기 단계

    //초기값 설정
    int t0 = 0; // tribonacci(0)
    int t1 = 1; // tribonacci(1)
    int t2 = 1; // tribonacci(2)
    int t3 = 0; // tribonacci(3)// 3번째부터는 계산할 것

    for (int i = 3; i <= n; i++) {
      t3 = t0 + t1 + t2; // tribonacci(i) = tribonacci(i-1) + tribonacci(i-2) + tribonacci(i-3)
      t0 = t1;
      t1 = t2;
      t2 = t3;
    }
    return t3;
  }
}