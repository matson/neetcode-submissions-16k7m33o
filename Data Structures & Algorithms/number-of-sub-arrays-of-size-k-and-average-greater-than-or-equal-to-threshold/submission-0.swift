class Solution {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var result = 0
    
        for i in 0...(arr.count - k){
            let subArray = arr[i..<(i + k)]
            let avg = Double(subArray.reduce(0, +)) / Double(k)
            if avg >= Double(threshold){
                result += 1
            }
        }
        return result
        
    }
}
