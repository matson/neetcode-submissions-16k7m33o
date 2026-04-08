class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // sliding window.
        // for O(n)?
        var L = 0
        var longest = 0
        // arr and set
        var sArr = Array(s)
        var seen = Set<Character>()
        
        for R in 0..<sArr.count{
            while seen.contains(sArr[R]){
                seen.remove(sArr[L])
                L += 1
            }
            seen.insert(sArr[R])
            longest = max(longest, R - L + 1)
        }
        return longest
    }
}
