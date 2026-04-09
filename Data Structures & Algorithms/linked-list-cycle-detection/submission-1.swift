/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var fast = head 
        var slow = head 

        while fast != nil && fast?.next != nil {
            slow = slow?.next // 1 
            fast = fast?.next?.next // 2
            if slow === fast {
                return true 
            }
        }
        return false 
    }
}
