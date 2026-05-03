class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        # set? 
        arr = set()
        L = 0 
        max_len = 0 
        for R in range(len(s)):
            # if it's present in the set 
            while s[R] in arr:
                arr.remove(s[L])
                L += 1 
            arr.add(s[R]) 
            max_len = max(max_len, R - L + 1)
        return max_len

        