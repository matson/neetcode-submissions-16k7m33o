class Solution:
    def characterReplacement(self, s: str, k: int) -> int:

        # dict 
        dictS = {}
        res = 0
        L = 0 

        for R in range(len(s)):
            # populate dict 
            if s[R] not in dictS: 
                dictS[s[R]] = 1
            else: dictS[s[R]] += 1 

            # get the max in the dict of keys
            # length - max freq in dict
            while (R - L + 1) - max(dictS.values()) > k:
                dictS[s[L]] -= 1
                L += 1 
            # max length 
            res = max(res, R - L + 1)
        return res




 


        