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
     * @param {ListNode} l1
     * @param {ListNode} l2
     * @return {ListNode}
     */
    addTwoNumbers(l1, l2) {
        if (!l1 && !l2) return null;
    
    // Traverse each list to build arrays
    let arr1 = [];
    let arr2 = [];
    
    let current1 = l1;
    while (current1) {
        arr1.push(current1.val);
        current1 = current1.next;
    }
    
    let current2 = l2;
    while (current2) {
        arr2.push(current2.val);
        current2 = current2.next;
    }
    
    // Reverse arrays to get correct number (since lists are in reverse order)
    let str1 = arr1.reverse().join('');
    let str2 = arr2.reverse().join('');
    
    // Convert to integers and add (handle empty cases)
    let num1 = str1 ? parseInt(str1) : 0;
    let num2 = str2 ? parseInt(str2) : 0;
    let sum = num1 + num2;
    
    // Convert sum to array of digits (in reverse order for result list)
    let sumArr = sum.toString().split('').map(Number).reverse();
    
    // Build result linked list
    let dummy = new ListNode(-1);
    let tail = dummy;
    for (let digit of sumArr) {
        let newNode = new ListNode(digit);
        tail.next = newNode;
        tail = newNode;
    }
    
    return dummy.next;
    }
}
