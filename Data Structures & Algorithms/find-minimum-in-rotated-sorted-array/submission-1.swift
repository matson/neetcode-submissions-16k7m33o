class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var min = nums[0] // any value
        for i in 0..<nums.count{
            if nums[i] < min{
                min = nums[i]
            }
        }
        return min 

    }
}
