class Solution {
    func romanToInt(_ s: String) -> Int {
          // char table
        var total = 0
        let romanMap: [Character: Int] = ["I": 1, "V":5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        let charArray: [Character] = Array(s)
    
        for i in 0..<charArray.count {
            // if any of the 6 cases
            if i < charArray.count - 1, let firstChar = romanMap[charArray[i]], let secondChar = romanMap[charArray[i+1]], firstChar < secondChar{
                total = total - romanMap[charArray[i]]!
            }else{
                total = total + romanMap[charArray[i]]!
            }
        }
        return total
    }
    
}
