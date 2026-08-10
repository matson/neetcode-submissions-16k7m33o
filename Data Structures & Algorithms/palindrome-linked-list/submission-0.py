# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:

        if not head:
            return True 

        stack = []

        current = head 

        while current:
            stack.append(current.val)
            current = current.next 

        # start from the beginning of list 
        current = head 
        while current and stack:
            current2 = stack.pop()
            if current.val != current2:
                return False 
            current = current.next 
        return True 

# explore 
# work with letters and numbers?
# given empty head - return True?

# brainstorm 
# use a stack 
# 