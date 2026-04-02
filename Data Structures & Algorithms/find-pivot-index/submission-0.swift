class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        for i in 0..<nums.count{
            // two sums
            var leftSum = 0
            var rightSum = 0
            
            for j in 0..<i{
                leftSum += nums[j]
            }
            
            for j in i+1..<nums.count {
                rightSum += nums[j]
            }
            
            if leftSum == rightSum{
                return i
            }
            
        }
        return -1
    }
}
