# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def getIntersectionNode(self, headA: ListNode, headB: ListNode) -> Optional[ListNode]:

        # base case 
        if not headA or not headB: 
            return None 

        # set pointers
        currentA = headA 
        currentB = headB


        while currentA is not currentB:
            # list A
            if not currentA:
                currentA = headB
            else:
                currentA = currentA.next 
            
            # list B
            if not currentB:
                currentB = headA
            else:
                currentB = currentB.next 

        return currentA


        


# explore 
# headA  or headB does not exist? return None
# both exist - carry on 
# return None - no intersection at all 

# brainstorm 
# start with two pointers one for each head 
# intersection is when nodeA == nodeB
# not even length - how to catch that 


# do this one here 
