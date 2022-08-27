// Solution for https://leetcode.com/problems/longest-substring-without-repeating-characters/

import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    int maxCount = 0;
    int currentCount = 0;

    int firstValidIndex = 0;
    Map<String, int> visitedCharacters = {};

    for (int i = 0; i < s.length; i++) {
      var char = s[i];

      var charVisitedIndex = visitedCharacters[char];

      if (charVisitedIndex != null && charVisitedIndex >= firstValidIndex) {
        maxCount = max(maxCount, currentCount);
        currentCount = i - charVisitedIndex - 1;
        firstValidIndex = charVisitedIndex + 1;
      }

      currentCount++;
      visitedCharacters[char] = i;
    }

    return max(maxCount, currentCount);
  }
}
