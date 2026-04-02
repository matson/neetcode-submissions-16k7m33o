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
     * @param {ListNode} list1
     * @param {ListNode} list2
     * @return {ListNode}
     */
    mergeTwoLists(list1, list2) {
         // Edge cases
        if (!list1 && !list2) {
            return null;
        }
        if (!list1) {
            return list2;
        }
        if (!list2) {
            return list1;
        }
        
        // Iterate through each list, append to an array
        let arr = [];
        let current1 = list1;
        let current2 = list2;
        
        while (current1) {
            arr.push(current1.val);
            current1 = current1.next;
        }
        while (current2) {
            arr.push(current2.val);
            current2 = current2.next;
        }
        
        // Sort the array
        let sorted = arr.sort((a, b) => a - b);
        
        // Make new linked list
        let head = null;
        let tail = null;
        for (let val of sorted) {
            let newNode = new ListNode(val);
            if (!head) {
                head = newNode;
                tail = newNode;
            } else {
                // Add to the tail
                tail.next = newNode;
                tail = newNode;
            }
        }
        
        return head;
    }
}
