class Solution:
    def isValid(self, s: str) -> bool:
        # stack 
        stack = []
        # dict 
        dictP = {"]": "[", "}" : "{", ")" : "("}

        for char in s: 
            # is key in dict
            if char in dictP:
                # non empty and last value is = to the dict value (match)
                if stack and stack[-1] == dictP[char]:
                    # remove 
                    stack.pop()
                else: 
                    return False 
            else: 
                # append to stack
                stack.append(char)
        
        return not stack 
            


        