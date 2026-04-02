class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // make freq dictionary
        var freqDict: [Int:Int] = [:]
        
        // populate
        for num in nums {
            freqDict[num, default: 0] += 1
        }
    
        // sort the dict
        let sorted = freqDict.sorted(by: { $0.value > $1.value })
        
        // get first k
        var result: [Int] = []
        for i in 0..<k {
            result.append(sorted[i].key)
        }
        return result
    }
}
