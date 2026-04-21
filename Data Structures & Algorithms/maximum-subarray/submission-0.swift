class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum: Int = Int.min
    
        for i in 0..<nums.count{
            var curSum = 0
            for j in i..<nums.count{
                curSum += nums[j]
                maxSum = max(maxSum, curSum)
            }
        }
        return maxSum
    }
}
