class Solution:
    def isPalindrome(self, s: str) -> bool:
        valid = ""

        for char in s:
            if char.isalnum():
                valid += char.lower()
        L = 0 
        R = len(valid) - 1
        
        while L < R: 
            if valid[L] != valid[R]:
                return False
            L +=1
            R -= 1
        return True 
        