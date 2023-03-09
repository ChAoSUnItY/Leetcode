# 142. Linked List Cycle II
## Original Question

Given the `head` of a linked list, return the node where the cycle begins. If there is no cycle, return `null`.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the `next` pointer. Internally, `pos` is used to denote the index of the node that tail's `next` pointer is connected to **(0-indexed)**. It is `-1` if there is no cycle. **Note that `pos` is not passed as a parameter.**

**Do not modify** the linked list.

**Example 1:**
![example1](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist.png)
```
Input: head = [3,2,0,-4], pos = 1
Output: tail connects to node index 1
Explanation: There is a cycle in the linked list, where tail connects to the second node.
```

**Example 2:**
![example2](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist_test2.png)
```
Input: head = [1,2], pos = 0
Output: tail connects to node index 0
Explanation: There is a cycle in the linked list, where tail connects to the first node.
```

**Example 3:**
![example3](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist_test3.png)
```
Input: head = [1], pos = -1
Output: no cycle
Explanation: There is no cycle in the linked list.
```

**Constraints:**

- The number of the nodes in the list is in the range `[0, 10^4]`.
- `-10^5 <= Node.val <= 10^5`
- `pos` is `-1` or a **valid index** in the linked-list.
 

**Follow up**: Can you solve it using `O(1)` (i.e. constant) memory?

## Approaches
### Node caching
By caching iterated nodes, we can check if current encountered node is already cached, which indicates where the cycle begins.

The memory usage of this method is based on input linked list's length, which would cost `N * sizeof(ListNode)` 
memory space (with some additional caching data structure's internal field).

### Math caclucated iteration
By iterate linked list with 2 different speed (1 step vs 2 step), when 2 iterating nodes encountered each other,
the node is where the cycle begins.

Let
```
oneStep: ListNode?
twoStep: ListNode?
oneStep2: ListNode?

x = rand(cycle_nodes) // This is any node in the cycle
a = cylce_node.pos - head.pos
b = abs(x.pos - cycle_node.pos)
c = abs(cycle_node.pos - x.pos)
```

When x is found:
1. `oneStep` walked distance of `a + b`
2. `twoStep` walked distance of `a + b + c + b` or `a + 2b + c`

Because `twoStep` has doulbe speed of `oneStep`, therefore, we can infer that:
```
    2(a + b) = a + 2b + c
=>  2a + 2b = a + 2b + c    // Eliminate 2b
=>  2a = a + c              // Eliminate lhs a with rhs a
=>  a = c                   // Q.E.D.
```

Therefore, we can further infer that when:
1. `oneStep` starts iterating from `x`
2. `oneStep2` starts iterating from `head`

**Nodes will encounter at `cycle_node`**, which is the problem's answer.

The memory usage of this method is constant `O(1)`, more precisely, it would only takes up to `3 * sizeof(ListNode)`.

## Used languages
- [Kotlin](./solution.kt)

**Total: 1**
