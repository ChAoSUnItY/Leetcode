/**
 * Example:
 * var li = ListNode(5)
 * var v = li.`val`
 * Definition for singly-linked list.
 * class ListNode(var `val`: Int) {
 *     var next: ListNode? = null
 * }
 */

class Solution {
    fun detectCycle(head: ListNode?): ListNode? {
        var oneStep: ListNode? = head ?: return null
        var twoStep: ListNode? = head

        while (oneStep != null && twoStep != null) {
            oneStep = oneStep.next
            twoStep = twoStep.next?.let(ListNode::next) ?: break

            if (oneStep == twoStep) {
                var oneStep2 = head

                while (oneStep != null && oneStep2 != null) {
                    if (oneStep == oneStep2)
                        return oneStep
                    
                    oneStep = oneStep.next
                    oneStep2 = oneStep2.next
                }
            }
        }

        return null
    }
}