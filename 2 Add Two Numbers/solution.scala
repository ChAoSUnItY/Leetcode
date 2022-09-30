/**
 * Definition for singly-linked list.
 * class ListNode(_x: Int = 0, _next: ListNode = null) {
 *   var next: ListNode = _next
 *   var x: Int = _x
 * }
 */
object Solution {
    def addTwoNumbers(l1: ListNode, l2: ListNode): ListNode = {
        var n1 = l1;
        var n2 = l2;
        var dummyHead = new ListNode(0);
        var current = dummyHead;
        var carry = 0;

        while (n1 != null || n2 != null || carry != 0) {
            val v1 = if (n1 != null) n1.x else 0;
            val v2 = if (n2 != null) n2.x else 0;
            val sum = carry + v1 + v2;
            carry = sum / 10;
            current.next = new ListNode(sum % 10);
            current = current.next;
            n1 = if (n1 != null) n1.next else null;
            n2 = if (n2 != null) n2.next else null;
        }

        return dummyHead.next;
    }
}