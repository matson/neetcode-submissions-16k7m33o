class Solution:
    def isValid(self, s: str) -> bool:
        # stack 
        stack = []
        # dict 
        dictP = {"]": "[", "}" : "{", ")" : "("}

        for char in s: 
            # is key in dict
            if char in dictP:
                # non empty and last value is a closing 
                if stack and stack[-1] == dictP[char]:
                    stack.pop()
                else: 
                    return False 
            else: 
                # append to stack
                stack.append(char)
        
        return not stack 
            


        