/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
    dummyHead := &ListNode{0, nil};
    current := dummyHead;
    carry := 0;

    for (l1 != nil || l2 != nil || carry != 0) {
        v1 := 0
		if l1 != nil { v1 = l1.Val }
        v2 := 0
		if l2 != nil { v2 = l2.Val }
        sum := carry + v1 + v2;
        carry = int(sum / 10);
        current.Next = &ListNode{sum % 10, nil};
        current = current.Next;
		if l1 != nil { l1 = l1.Next }
		if l2 != nil { l2 = l2.Next }
    }

    return dummyHead.Next;
}