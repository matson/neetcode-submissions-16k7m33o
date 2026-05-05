class Solution:
    def removeDuplicates(self, s: str, k: int) -> str:
        # need to think about the k 
        # [a, 1]
        stack = []

        for char in s: 
            if stack and stack[-1][0] == char:
                # increase the count 
                stack[-1][1] += 1
            else:
                # add to stack 
                stack.append([char, 1])
            
            if stack[-1][1] == k:
                # pop from stack 
                stack.pop()
        res = ""
        for char, count in stack: 
            res += (char * count)
        return res
            
        

            

           
        
        