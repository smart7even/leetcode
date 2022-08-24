import 'package:leetcode/task_0002.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('test toList function', () {
    test('toList correctly transforms linked list to list of ints', () {
      var l1 = ListNode(2, ListNode(4, ListNode(3)));

      expect(toList(l1), equals([2, 4, 3]));
    });

    test('toList correctly transforms null to empty list of ints', () {
      expect(toList(null), equals([]));
    });
  });

  test('correctly returns linkedlist which equals sum of two numbers', () {
    var l1 = ListNode(2, ListNode(4, ListNode(3)));
    var l2 = ListNode(5, ListNode(6, ListNode(4)));

    expect(toList(Solution().addTwoNumbers(l1, l2)), equals([7, 0, 8]));
  });
}
