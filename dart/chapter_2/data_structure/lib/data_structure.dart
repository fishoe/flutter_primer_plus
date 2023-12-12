void stack() {
  // 스택은 선형 구조의 하나로, 요소를 차례대로 입력하여 저장하며, 가장 마지막에 있는 요소를 꺼내는 방식의 자료구조이다.
  // 스택은 후입선출(LIFO, Last In First Out) 방식으로 동작한다.
  var stack = <int>[];
  stack.add(1);
  stack.add(2);
  stack.add(3);
  stack.add(4);

  print(stack);
  print(stack.removeLast());
  print(stack);
  print(stack.removeLast());
  print(stack);
}

void queue() {
  // 큐는 선형 구조의 하나로, 요소를 차례대로 입력하여 저장하며, 가장 먼저 입력된 요소를 꺼내는 방식의 자료구조이다.
  // 큐는 선입선출(FIFO, First In First Out) 방식으로 동작한다.
  var queue = <int>[];
  queue.add(1);
  queue.add(2);
  queue.add(3);
  queue.add(4);

  print(queue);
  print(queue.removeAt(0));
  print(queue);
  print(queue.removeAt(0));
  print(queue);
}

void set() {
  // 집합은 중복된 요소를 허용하지 않는 자료구조이다.
  // 집합은 순서가 없다.
  // 집합은 수학에서의 집합과 동일하다.
  // 집합은 합집합, 교집합, 차집합 등의 연산을 지원한다.
  var set = <int>{};
  set.add(1);
  set.add(2);
  set.add(2);
  set.add(3);
  set.add(4);

  print(set);

  var set2 = <int>{ 4, 5, 6};

  // 합집합
  print(set.union(set2));
  // 교집합
  print(set.intersection(set2));
  // 차집합
  print(set.difference(set2));
}

void list(){
  // 리스트는 선형 구조의 하나로, 요소를 차례대로 입력하여 저장하며, 요소의 순서가 유지되는 자료구조이다.
  // array와 유사하다.
  // 리스트는 인덱스를 사용하여 요소에 접근할 수 있다.
  // 리스트는 동일한 요소를 중복하여 저장할 수 있다.
  // 리스트는 요소의 순서가 유지되기 때문에 요소의 삽입, 삭제가 빈번하게 발생하면 성능이 저하된다.
  var list = <int>[];
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  print(list);
  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);

  list.removeAt(0);
  print(list);
  list.removeAt(0);
  print(list);
  list.removeAt(0);
  print(list);
  list.removeAt(0);
  print(list);
}

void map(){
  // 맵은 키와 값의 쌍으로 이루어진 자료구조이다.
  // 맵은 순서가 없다.(* ordered map은 순서가 있다.)
  // 맵은 키를 사용하여 값을 참조한다.
  // 맵은 동일한 키를 사용하여 값을 저장하면 나중에 저장한 값으로 덮어쓴다.
  // 맵은 키를 사용하여 값을 삭제할 수 있다.
  var map = <String, int>{};
  map["a"] = 1;
  map["b"] = 2;
  map["c"] = 3;
  map["d"] = 4;

  print(map);
  print(map["a"]);
  print(map["b"]);
  print(map["c"]);
  print(map["d"]);

  map.remove("a");
  print(map);
  map.remove("b");
  print(map);
  map.remove("c");
  print(map);
  map.remove("d");
  print(map);
}

// 이 외에 트리, 그래프 등의 자료구조가 있다.

