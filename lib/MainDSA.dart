bubblesort(List arr) {
  // The outer loop (i) controls the number of passes over the array.
  // The inner loop (j) compares adjacent elements.
  // If arr[j] is greater than arr[j + 1], they are swapped.
  // After every pass, the largest element moves to the end of the list.
  // This process repeats until the entire list is sorted.
  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < arr.length - 1; j++) {
      print("the arra ${arr[j]}");
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

stringabcConversion(String passString) {
  //   The function uses three nested loops (i, j, k) to iterate over all character positions in the string.
  // Each loop picks one character index from the string.
  // This allows us to form combinations of three characters.
  for (var i = 0; i < passString.length; i++) {
    for (var j = 0; j < passString.length; j++) {
      for (var k = 0; k < passString.length; k++) {
        if (i != j && j != k && k != i) {
          print("${passString[i]} ${passString[j]} ${passString[k]}");
        }
      }
    }
  }
}

findSecondLarges() {
  //Find second largest without loop and array
  var a = 14;
  var b = 89;
  var c = 78;
  var secondLargest = 0;
  if ((a > b && a < c) || (a > c && a < b)) {
    secondLargest = a;
  } else if ((b > a && b < c) || (b > c && b < a)) {
    secondLargest = b;
  } else {
    secondLargest = c;
  }
  return secondLargest;
}

findMissingNumber(List arr) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] != i + 1) {
      return i + 1;
    }
  }
  return arr.length + 1;
}

moveAllZeroToRight(List arr) {
  // This algorithm uses a two-pointer approach to
  //  move all zeros to the end in a single pass without using extra space.
  int j = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] != 0) {
      arr[j] = arr[i];
      if (i != j) {
        arr[i] = 0;
      }
      j++;
    }
  }
  return arr;
}

findDuplicate(List arr) {
  Map<int, int> seen = {};
  List duplicate = [];
  for (var num in arr) {
    seen[num] = (seen[num] ?? 0) + 1;
  }
  seen.forEach((key, value) {
    if (value > 1) {
      duplicate.add(key);
    }
  });
  return duplicate;
}

mergeArray(List arr, List arr2) {
  int i = 0;
  int j = 0;
  List mergedArray = [];
  while (i < arr.length && j < arr2.length) {
    if (arr[i] <= arr2[j]) {
      mergedArray.add(arr[i++]);
    } else {
      mergedArray.add(arr2[j++]);
    }
  }
  while (i < arr.length) {
    mergedArray.add(arr[i++]);
  }
  while (j < arr2.length) {
    mergedArray.add(arr2[j++]);
  }
  return mergedArray;
}

reverseArray(List<int> arr, int start, int end) {
  if (start >= end) {
    return;
  }
  int temp = arr[start];
  arr[start] = arr[end];
  arr[end] = temp;

  reverseArray(arr, start + 1, end - 1);
  return arr;
}
