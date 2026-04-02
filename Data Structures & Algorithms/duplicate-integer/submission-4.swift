class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
         // make a set
        var arrCount = nums.count
        var numSet = Set<Int>()
        for i in 0..<arrCount{
            numSet.insert(nums[i])
        }
        
        return numSet.count < arrCount
        
    }
}
