// Solution for https://leetcode.com/problems/add-two-numbers/

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

List<int> toList(ListNode? node) {
  if (node == null) {
    return [];
  }

  List<int> result = [];

  ListNode? currentNode = node;

  while (currentNode != null) {
    result.add(currentNode.val);

    currentNode = currentNode.next;
  }

  return result;
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if (l1 == null || l2 == null) {
      return null;
    }

    ListNode resultRootNode = ListNode(0);
    ListNode currentNode = resultRootNode;

    ListNode? l1Next = l1;
    ListNode? l2Next = l2;

    while (l1Next != null || l2Next != null) {
      int digitSum = 0;

      if (l1Next != null) {
        digitSum += l1Next.val;
      }

      if (l2Next != null) {
        digitSum += l2Next.val;
      }

      digitSum += currentNode.val;

      currentNode.val = digitSum % 10;

      if (digitSum >= 10) {
        var newNode = ListNode(1);
        currentNode.next = newNode;
        currentNode = newNode;
      } else {
        if (l1Next?.next != null || l2Next?.next != null) {
          var newNode = ListNode(0);
          currentNode.next = newNode;
          currentNode = newNode;
        }
      }

      l1Next = l1Next?.next;
      l2Next = l2Next?.next;
    }

    return resultRootNode;
  }
}
