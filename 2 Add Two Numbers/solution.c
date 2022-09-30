/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */


struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2){
    struct ListNode *dummyHead = (struct ListNode *) malloc(sizeof(struct ListNode));
    dummyHead->next = NULL;
    struct ListNode *current = dummyHead;
    int carry = 0;

    while (l1 || l2 || carry != 0) {
        int v1 = l1 ? l1->val : 0;
        int v2 = l2 ? l2->val : 0;
        int sum = carry + v1 + v2;
        carry = sum / 10;
        current->next = (struct ListNode *) malloc(sizeof(struct ListNode));
        current->next->val = sum % 10;
        current->next->next = NULL;
        current = current->next;
        l1 = l1 ? l1->next : NULL;
        l2 = l2 ? l2->next : NULL;
    }

    return dummyHead->next;
}