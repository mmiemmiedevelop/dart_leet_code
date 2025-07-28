import 'dart:collection';

class RecentCounter {
  Queue<int> pings = Queue<int>(); //큐활용

  RecentCounter();

  int ping(int t) {
    pings.add(t);
    while (pings.isNotEmpty && pings.first < t - 3000) {
      pings.removeFirst();//3000미만의 핑 제거
    }
    return pings.length;
  }
}