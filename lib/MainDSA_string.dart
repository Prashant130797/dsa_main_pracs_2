String reverseString(String data){
  String reverseString = "";
  for(var i = data.length - 1 ; i >= 0;i--){
    reverseString = reverseString + data[i];
  }
  return reverseString;
}

checkStrPalindrome(String palindromeSTR){
  int left = 0;
  int right = palindromeSTR.length - 1;
  while(left < right){
    if(palindromeSTR[left] != palindromeSTR[right]){
      return false;
    }
    left++;
    right--;
  }
  return true;
}

checkStringCharFrequency(String passString) {
  Map<String, int> frequencyMap = {};
  for (var chr in passString.split('')) {
    frequencyMap[chr] = (frequencyMap[chr] ?? 0) + 1;
  }
  return frequencyMap;
}