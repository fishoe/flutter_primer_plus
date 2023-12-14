
void sort(){
  // 정렬은 선형 구조를 일정한 기준의 순서를 바꾸는 것이다.

  var list = [ for (var i = 0; i < 10; i++) i ];

  // 버블 정렬
  // 버블 정렬은 인접한 두 요소를 비교하여 정렬하는 알고리즘이다.

  list.shuffle();

  print(list);
  bubbleSort(list);
  print(list);

  // 삽입 정렬
  // 삽입 정렬은 요소를 하나씩 추가하면서 정렬하는 알고리즘이다.

  list.shuffle();
  print(list);
  insertionSort(list);
  print(list);

  // 병합 정렬
  // 병합 정렬은 리스트를 반으로 나누어 정렬하고, 정렬된 리스트를 병합하는 알고리즘이다.

  list.shuffle();
  print(list);
  mergeSort(list);
  print(list);

}

void sortBenchMark(){
  var list = [ for (var i = 0; i < 10000; i++) i ];
  list.shuffle();
  var list2 = list;
  var list3 = list;

  var stopwatch = Stopwatch();
  stopwatch.start();
  bubbleSort(list);
  stopwatch.stop();
  print("bubbleSort: ${stopwatch.elapsedMilliseconds}ms");

  list2 = [ for (var i = 0; i < 10000; i++) 10000 - i ];
  stopwatch.reset();
  stopwatch.start();
  insertionSort(list2);
  stopwatch.stop();
  print("insertionSort: ${stopwatch.elapsedMilliseconds}ms");

  list3 = [ for (var i = 0; i < 10000; i++) 10000 - i ];
  stopwatch.reset();
  stopwatch.start();
  mergeSort(list3);
  stopwatch.stop();
  print("mergeSort: ${stopwatch.elapsedMilliseconds}ms");
}

void bubbleSort(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

void insertionSort(List<int> list) {
  for (var i = 1; i < list.length; i++) {
    var key = list[i];
    var j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = key;
  }
}

void mergeSort(List<int> list) {
  if (list.length <= 1) {
    return;
  }
  var mid = list.length ~/ 2;
  var left = list.sublist(0, mid);
  var right = list.sublist(mid);
  mergeSort(left);
  mergeSort(right);
  var i = 0;
  var j = 0;
  var k = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      list[k] = left[i];
      i++;
    } else {
      list[k] = right[j];
      j++;
    }
    k++;
  }
  while (i < left.length) {
    list[k] = left[i];
    i++;
    k++;
  }
  while (j < right.length) {
    list[k] = right[j];
    j++;
    k++;
  }
}