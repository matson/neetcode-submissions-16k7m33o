class Solution:
    def findContentChildren(self, g: List[int], s: List[int]) -> int:

        if not g or not s:
            return 0 
        
        # sort
        g.sort()
        s.sort()

        # pointers 

        i = 0 # cookie
        j = 0 # child 
        satisfied = 0 

        while i < len(s) and j < len(g):

            # greed
            # greater or equal 
            if s[i] >= g[j]:
                # give cookie 
                satisfied += 1 
                i += 1
                j += 1
            else:
                # move through cookies only 
                i += 1 
        return satisfied 



        