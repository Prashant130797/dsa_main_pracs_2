String reverseString(String data) {
  String reverseString = "";
  for (var i = data.length - 1; i >= 0; i--) {
    reverseString = reverseString + data[i];
  }
  return reverseString;
}

checkStrPalindrome(String palindromeSTR) {
  int left = 0;
  int right = palindromeSTR.length - 1;
  while (left < right) {
    if (palindromeSTR[left] != palindromeSTR[right]) {
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

String? firstNonRepeating(String str) {
  Map<String, int> freq = {};

  for (var ch in str.split('')) {
    freq[ch] = (freq[ch] ?? 0) + 1;
  }

  for (var ch in str.split('')) {
    if (freq[ch] == 1) return ch;
  }
  return null;
}

void main() {
  var result = firstNonRepeating("prashant");
  print("the result is ${result}");
}
