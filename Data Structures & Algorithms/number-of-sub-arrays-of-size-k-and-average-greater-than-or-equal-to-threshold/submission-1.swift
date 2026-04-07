class Solution {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var result = 0
        var curSum = 0
        
        // find curSum
        // first loop we will add the Kth element
        for i in 0..<(k-1){
            curSum += arr[i]
        }
        
        for L in 0...(arr.count - k){
            curSum += arr[L + k - 1]
            if curSum / k >= threshold{
                result += 1
            }
            curSum -= arr[L] // remove the leftmost element as window slides
        }
    return result 
        
    }
}
