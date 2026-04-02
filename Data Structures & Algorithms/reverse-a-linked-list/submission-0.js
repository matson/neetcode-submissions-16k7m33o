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
     * @return {ListNode}
     */
    reverseList(head) {
         // Handle empty list or single node
    if (!head || !head.next) {
        return head;
    }
    
    // Step 1: Collect values into an array
    let arr = [];
    let current = head;
    while (current) {
        arr.push(current.val);
        current = current.next;
    }
    
    // Step 2: Reverse the array
    let reverse = arr.reverse();
    
    // Step 3: Build new linked list from reversed array
    let newHead = null;
    let tail = null;
    for (let val of reverse) {
        let newNode = new ListNode(val);
        if (!newHead) {
            newHead = newNode;
            tail = newNode;
        } else {
            tail.next = newNode;
            tail = newNode;
        }
    }
    
    return newHead;
    }
}
