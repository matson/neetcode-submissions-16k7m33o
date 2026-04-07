class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        // now do this with binary search? - search over range of k's
        // min k is 1
        // max is max value of pile?
        var left = 1
        var right = piles.max()!
        var result = left
        
        // binary search
        while left <= right {
            let k = (left + right) / 2
            var hours = 0
            for p in piles{
                hours += Int(ceil(Double(p) / Double(k)))
            }
            if hours <= h {
                result = k
                right = k - 1
            }else{
                left = k + 1
            }
        }
        return result

    }
}
