/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var n1 = l1;
        var n2 = l2;
        var dummyHead = ListNode(0);
        var current = dummyHead;
        var carry = 0;

        while (n1 != nil || n2 != nil || carry != 0) {
            var v1 = n1 != nil ? n1!.val : 0;
            var v2 = n2 != nil ? n2!.val : 0;
            var sum = carry + v1 + v2;
            carry = Int(sum / 10);
            current.next = ListNode(sum % 10);
            current = current.next!;
            n1 = n1 != nil ? n1!.next : nil;
            n2 = n2 != nil ? n2!.next : nil;
        }

        return dummyHead.next;
    }
}