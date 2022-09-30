/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    var dummyHead = new ListNode(0);
    var current = dummyHead;
    var carry = 0;

    while (l1 != null || l2 != null || carry != 0) {
        var v1 = l1 != null ? l1.val : 0;
        var v2 = l2 != null ? l2.val : 0;
        var sum = carry + v1 + v2;
        carry = (sum / 10).toInt();
        current.next = new ListNode(sum % 10);
        current = current.next!;
        l1 = l1 != null ? l1.next : null;
        l2 = l2 != null ? l2.next : null;
    }

    return dummyHead.next;
  }
}