// Definition for singly-linked list.
// #[derive(PartialEq, Eq, Clone, Debug)]
// pub struct ListNode {
//   pub val: i32,
//   pub next: Option<Box<ListNode>>
// }
// 
// impl ListNode {
//   #[inline]
//   fn new(val: i32) -> Self {
//     ListNode {
//       next: None,
//       val
//     }
//   }
// }
impl Solution {
    pub fn add_two_numbers(l1: Option<Box<ListNode>>, l2: Option<Box<ListNode>>) -> Option<Box<ListNode>> {
        let mut n1 = l1;
        let mut n2 = l2;
        let mut head = Some(Box::new(ListNode::new(0)));
        let mut current = head.as_mut();
        let mut carry = 0;

        while n1.is_some() || n2.is_some() || carry != 0 {
            let mut sum = carry;

            if let Some(node) = n1 {
                sum += node.val;
                n1 = node.next;
            }
            if let Some(node) = n2 {
                sum += node.val;
                n2 = node.next;
            }

            carry = sum / 10;
            
            if let Some(node) = current {
                node.next = Some(Box::new(ListNode::new(sum % 10)));
                current = node.next.as_mut();
            }
        }

        head.unwrap().next
    }
}