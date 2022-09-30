# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    dummyHead = ListNode.new(0)
    current = dummyHead
    carry = 0

    while (l1 != nil || l2 != nil || carry != 0)
        v1 = l1 != nil ? l1.val : 0
        v2 = l2 != nil ? l2.val : 0
        sum = carry + v1 + v2
        carry = (sum / 10).round
        current.next = ListNode.new(sum % 10)
        current = current.next
        l1 = l1 != nil ? l1.next : nil
        l2 = l2 != nil ? l2.next : nil
    end

    return dummyHead.next
end