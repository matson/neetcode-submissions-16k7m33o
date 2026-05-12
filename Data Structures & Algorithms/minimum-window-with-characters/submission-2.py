class Solution:
    def minWindow(self, s: str, t: str) -> str:
        # sliding window 
        # edge case 
        if t == "": 
            return ""
        
        dictT = {}
        dictS = {}
        for char in t:
            # build dict T - always use this now 
            dictT[char] = dictT.get(char, 0) + 1

        have = 0 
        need = len(dictT)

        res = [-1, -1]
        resLen = float("inf")
        L = 0 

        for R in range(len(s)):
            # dict S 
            c = s[R]
            dictS[c] = dictS.get(c, 0) + 1

            # does satisfy?
            if c in dictT and dictS[c] == dictT[c]:
                have += 1
            while have == need:
                # update our result 
                if (R - L + 1) < resLen:
                    res = [L, R]
                    resLen = (R - L + 1)
                
                # pop from the left of our window 
                dictS[s[L]] -= 1 
                if s[L] in dictT and dictS[s[L]] < dictT[s[L]]:
                    have -= 1 
                L += 1 
        L, R = res
        return s[L : R + 1] if resLen != float('inf') else ""

    

        

                





        