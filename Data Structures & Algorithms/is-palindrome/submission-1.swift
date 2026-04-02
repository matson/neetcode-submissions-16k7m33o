class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let stringArr = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        return stringArr == stringArr.reversed()
    }
}
