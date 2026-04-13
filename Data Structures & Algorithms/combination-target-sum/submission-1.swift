class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var comboList: [[Int]] = []
        var curList: [Int] = []
        // range i
        helper(target, nums, 0, &curList, &comboList)
        return comboList
    }

    func helper(_ target: Int, _ nums: [Int], _ i: Int, _ curList: inout [Int], _ comboList: inout [[Int]]) {
    
        // base
        // if the sums = target return
        if target == 0 {
            comboList.append(curList)
            return
        }
        
        if target < 0 || i == nums.count {
            return
        }
    
        
        // decision to include the current i
        curList.append(nums[i])
        helper(target - nums[i], nums, i, &curList, &comboList)
        curList.removeLast()
        
        // not to include current i
        helper(target, nums, i+1, &curList, &comboList)
        
    }
}
