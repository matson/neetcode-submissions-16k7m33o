class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var subsets: [[Int]] = []
        var curSet: [Int] = []
        var sorted = nums.sorted() // need to sort
        helper2(0, sorted, &curSet, &subsets)
        return subsets
    }

    func helper2(_ i: Int, _ nums: [Int], _ curSet: inout [Int], _ subsets: inout [[Int]]){
    
        if i == nums.count{
            subsets.append(curSet)
            return
        }
        
        // include nums[i]
        curSet.append(nums[i])
        helper2(i+1, nums, &curSet, &subsets)
        curSet.removeLast()
        
        // not to include nums[i]
        var j = i
        // while we are in bounds and the elements match
        while j + 1 < nums.count && nums[j] == nums[j+1]{
            // the skip
            j += 1
        }
        helper2(j+1, nums, &curSet, &subsets)
    
}
}
