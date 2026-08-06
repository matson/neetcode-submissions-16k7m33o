# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:

        # remove all nodes == to val (target)
        # dummy node 
        # no head 
        if not head:
            return None

        dummy = ListNode(-1)
        dummy.next = head 
        current = dummy 

        while current.next:
            # if target 
            if current.next.val == val:
                current.next  = current.next.next 
            else:
                current = current.next 
        return dummy.next  

        