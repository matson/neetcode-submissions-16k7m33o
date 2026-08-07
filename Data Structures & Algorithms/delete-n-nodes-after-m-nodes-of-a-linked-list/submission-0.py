# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def deleteNodes(self, head: Optional[ListNode], m: int, n: int) -> Optional[ListNode]:
        
        # base 
        if not head:
            return None 

        current = head 

        # while there are nodes 
        # repeat process 
        while current: 

            # keep m nodes 
            for _ in range(m-1):
                if not current.next:
                    return head 
                current = current.next

            temp = current.next 
            # delete n nodes 
            for _ in range(n):
                if not temp:
                    break
                temp = temp.next 
            current.next = temp 

            # move to the next cycle
            current = temp 

            # travel m nodes, then delete n nodes 
        return head 
        

# explore 
# given head and n and m
# return None if no list 


# brainstorm 
