/**
 * Definition for singly-linked list.
 * class ListNode {
 *     constructor(val = 0, next = null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */

class Solution {
    /**
     * @param {ListNode} head
     * @param {number} n
     * @return {ListNode}
     */
    removeNthFromEnd(head, n) {
         // Initialize dummy node
    const dummy = new ListNode(-1, head);
    let left = dummy;
    let right = head;
    
    // Shift right pointer n steps ahead
    while (n > 0 && right) {
        right = right.next;
        n--;
    }
    
    // Move both pointers until right reaches the end
    while (right) {
        left = left.next;
        right = right.next;
    }
    
    // Delete the nth node from the end
    left.next = left.next ? left.next.next : null;
    
    return dummy.next;
    }
}
