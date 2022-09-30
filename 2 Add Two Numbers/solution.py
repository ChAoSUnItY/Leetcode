# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        dummyHead = ListNode(0)
        current = dummyHead
        carry = 0

        while (l1 != None or l2 != None or carry != 0):
            v1 = l1.val if l1 != None else 0
            v2 = l2.val if l2 != None else 0
            sum = carry + v1 + v2
            carry = int(sum / 10)
            current.next = ListNode(sum % 10)
            current = current.next
            l1 = l1.next if l1 != None else None
            l2 = l2.next if l2 != None else None
        
        return dummyHead.next