import 'package:leetcode/task_0003.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
      'lengthOfLongestSubstring correctly returns length of longest substring',
      () {
    test(
      'testcase 1',
      () {
        expect(
          Solution().lengthOfLongestSubstring('dvdf'),
          equals(3),
        );
      },
    );

    test(
      'testcase 2',
      () {
        expect(
          Solution().lengthOfLongestSubstring('abcabcbb'),
          equals(3),
        );
      },
    );

    test(
      'testcase 3',
      () {
        expect(
          Solution().lengthOfLongestSubstring('pwwkew'),
          equals(3),
        );
      },
    );

    test(
      'testcase one repeating character',
      () {
        expect(
          Solution().lengthOfLongestSubstring('bbbbb'),
          equals(1),
        );
      },
    );

    test(
      'testcase no repeating characters',
      () {
        expect(
          Solution().lengthOfLongestSubstring('abcdef'),
          equals(6),
        );
      },
    );
  });
}
