class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var maxReach: Int = 0
    
        for i in 0..<nums.count{
            if maxReach < i{
                return false
            }
            maxReach = max(maxReach, i + nums[i])
        }
        return true 
    }
}
