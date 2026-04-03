class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var L = 0
        var R = nums.count - 1
        
        while L <= R {
            // middle
            let mid = (L + R) / 2
            
            if target > nums[mid] {
                // left must increase
                L = mid + 1
            }else if target < nums[mid]{
                R = mid - 1
            }
            else{
                return mid
            }
            
        }
        return -1
    
    }
}
