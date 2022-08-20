import 'package:leetcode/task_0001.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('correctly returns indexes of nubmers which sum is target', (() {
    expect(Solution().twoSum([2, 7, 11, 15], 9), equals([0, 1]));
  }));

  test(
      'throws ArgumentError when there are no numbers in list which sum is target',
      (() {
    expect(() {
      Solution().twoSum([1, 2, 3], 6);
    }, throwsArgumentError);
  }));
}
