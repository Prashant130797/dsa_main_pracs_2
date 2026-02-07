findLargest(List arr){
  int max = arr[0];
  for(var i = 1;i < arr.length;i++){
    if(arr[i] > max){
      max = arr[i];
    }
  }
  return max;
}

findSecondLargest(List arr){
  int firstLargest = arr[0];
  int secondfLargest = arr[1];
  if(secondfLargest > firstLargest){
    int temp = firstLargest;
    firstLargest = secondfLargest;
    secondfLargest = temp;
  }
  for(var i = 2;i < arr.length ; i++){
    if(arr[i] > firstLargest){
      secondfLargest = firstLargest;
      firstLargest = arr[i];
    }else if(arr[i] > secondfLargest){
      secondfLargest = arr[i];
    }
  }
  return secondfLargest;
}

findMaxSubArray(List<int> arr){
  int maxEndingHere = arr[0];
  int maxSoFar = arr[0];
  for(var i =1;i < arr.length;i++){
    if(maxEndingHere < 0){
      maxEndingHere = arr[i];
    }else{
      maxEndingHere = maxEndingHere + arr[i];
    }

    if(maxEndingHere > maxSoFar){
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