bubblesort(List arr) {
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

findLargest(List arr) {
  int max = arr[0];
  for (var i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}

findSecondLargest(List arr) {
  int firstLargest = arr[0];
  int secondfLargest = arr[1];
  if (secondfLargest > firstLargest) {
    int temp = firstLargest;
    firstLargest = secondfLargest;
    secondfLargest = temp;
  }
  for (var i = 2; i < arr.length; i++) {
    if (arr[i] > firstLargest) {
      secondfLargest = firstLargest;
      firstLargest = arr[i];
    } else if (arr[i] > secondfLargest) {
      secondfLargest = arr[i];
    }
  }
  return secondfLargest;
}

findMaxSubArray(List<int> arr) {
  int maxEndingHere = arr[0];
  int maxSoFar = arr[0];
  for (var i = 1; i < arr.length; i++) {
    if (maxEndingHere < 0) {
      maxEndingHere = arr[i];
    } else {
      maxEndingHere = maxEndingHere + arr[i];
    }
    if (maxEndingHere > maxSoFar) {
      maxSoFar = maxEndingHere;
    }
  }
  return maxSoFar;
}

twoSum(List<int> arr, int target) {
  Map<int, int> sum = {};
  for (var i = 0; i < arr.length; i++) {
    int diff = target - arr[i];
    if (sum.containsKey(diff)) {
      return [sum[diff], i];
    }
    sum[arr[i]] = i;
  }
  return [];
}

palindromeNumber(int palNumber) {
  print("the number ${palNumber % 10}");
  if (palNumber < 0 || (palNumber % 10 == 0 && palNumber != 0)) {
    return false;
  }

  int reversed = 0;
  while (palNumber > reversed) {
    int digit = palNumber % 10;
    reversed = reversed * 10 + digit;
    palNumber ~/= 10;
  }
  return palNumber == reversed || palNumber == reversed ~/ 10;
}

mostFrequent(List<int> arr) {
  Map<int, int> frequentMap = {};
  int maxCount = 0;
  int result = arr[0];
  for (var num in arr) {
    frequentMap[num] = (frequentMap[num] ?? 0) + 1;
  }

  frequentMap.forEach((key, value) {
    if (value > maxCount) {
      maxCount = value;
      result = key;
    }
  });
  return result;
}

mostFrequentNewMethod(List<int> arr) {
  Map<int, int> freqMap = {};
  int maxCount = 0;
  int mostFrequentElement = arr[0];

  for (var num in arr) {
    freqMap[num] = (freqMap[num] ?? 0) + 1;

    if (freqMap[num]! > maxCount) {
      maxCount = freqMap[num]!;
      mostFrequentElement = num;
    }
  }
  return mostFrequentElement;
}

int sumOfArray(List<int> arr){
  int totalsum = 0;
  for(var i = 0;i < arr.length;i++){
    if(totalsum >= 0){
      print("the arr of i is ${arr[i]}");
      totalsum = totalsum + arr[i];
    }
  }
  return totalsum;
}



void main() {
  // var sumOfArrayMain = sumOfArray([1,2,3,4,5,6]);
  // var palindromeNumbeFind = palindromeNumber(135);
  // var char = twoSum([2, 7, 9, 1], 9);
  // var maxSubArray = findMaxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]);

  // var result = bubblesort([1, 4, 8, 9, 6]);
  // stringabcConversion("abc");
  // var printsecondLargest = reverseArray(
  //   [1, 5, 6, 8, 2, 4, 7, 6, 2],
  //   0,
  //   [1, 5, 6, 8, 2, 4, 7, 6, 2].length - 1,
  // );
  // var result2 = findSecondLargest([7, 8, 96, 101, 48, 63, 2]);
  // var result = findLarge st([7, 9, 101, 2, 7, 9]);
  // var mostFrequentNumber = mostFrequentNewMethod([1, 3, 2, 1, 4, 1, 3, 3, 3]);
  // var resultString = checkStrPalindrome("icici");
  // print("the result ${resultString}");
}
