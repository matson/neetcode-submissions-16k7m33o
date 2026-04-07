class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        // starting rate
        // O(m*n)
        var k = 1
        
        while true {
            var hoursC = 0
            for pile in piles{
                // divide bananas by rate - ceil
                // get the total hours
                // compare those total hours to our h value
                // if it's the first one that is less than the h value, we return it
                hoursC += Int(ceil(Double(pile) / Double(k)))
            }
            if hoursC <= h {
                return k
            }
            
            k+=1
        }
        return k // the min is the starting rate 1
    }
}
