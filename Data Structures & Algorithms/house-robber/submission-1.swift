class Solution {
    func rob(_ nums: [Int]) -> Int {
        var rob1 = 0
        var rob2 = 0
    
        // [rob1, rob2, n, n+1, ...]
        for n in nums{
            var tmp = max(n + rob1, rob2)
            rob1 = rob2
            rob2 = tmp
        }
        return rob2
    }

}
