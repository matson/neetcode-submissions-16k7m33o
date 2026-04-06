class Solution {
    func findMin(_ nums: [Int]) -> Int {
          // O(logn)
            var result = nums[0]
            var left = 0
            var right = nums.count - 1
            
            while left <= right {
                // edge case
                if nums[left] < nums[right] {
                    result = min(result, nums[left])
                    break
                }
                let mid = (left + right) / 2
                result = min(result, nums[mid])
                if nums[mid] >= nums[left]{
                    // search the right sorted portion
                    left = mid + 1
                }else{
                    right = mid - 1
                }
                
            }
            
            return result

    }
}
