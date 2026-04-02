class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var strArr = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = strArr.count - 1
        
        while left < right {
            if strArr[left] != strArr[right]{
                return false
                
            }
            left += 1
            right -= 1
        }
        return true
    }
}
