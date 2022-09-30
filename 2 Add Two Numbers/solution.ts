/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

 function addTwoNumbers(l1: ListNode | null, l2: ListNode | null): ListNode | null {
    let dummyHead = new ListNode(0);
    let current = dummyHead;
    let carry = 0;

    while (l1 || l2 || carry) {
        let v1 = l1 != null ? l1.val : 0;
        let v2 = l2 != null ? l2.val : 0;
        let sum = carry + v1 + v2;
        carry = ~~(sum / 10);
        current.next = new ListNode(sum % 10);
        current = current.next;
        l1 = l1 != null ? l1.next : null;
        l2 = l2 != null ? l2.next : null;
    }

    return dummyHead.next;
};