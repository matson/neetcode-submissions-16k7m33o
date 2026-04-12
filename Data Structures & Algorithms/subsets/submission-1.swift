class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        // cur and subset
        var curSet: [Int] = []
        var subsets: [[Int]] = []
        helper(0, nums, &curSet, &subsets)
        return subsets
    }

    func helper(_ i: Int, _ nums: [Int], _ curSet: inout [Int], _ subset: inout [[Int]]){
    // bounds check
        if i == nums.count{
            subset.append(curSet)
            return
        }
        
        // decisions
        // include nums[i]
        curSet.append(nums[i])
        helper(i+1, nums, &curSet, &subset)
        curSet.removeLast()
        
        // don't include nums[i]
        helper(i+1, nums, &curSet, &subset)
    }
}
