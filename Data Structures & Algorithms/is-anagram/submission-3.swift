class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // IDEAL: O(n)
        // can store each in a hashmap - compare the counts
        var sMap: [Character: Int] = [:]
        var tMap: [Character: Int] = [:]
        
        // populate them
        for char in s{
            sMap[char, default: 0] += 1
        }
        
        for char in t{
            tMap[char, default: 0] += 1
        }
        
        return sMap == tMap
        
            
    }
}
