class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
           // make a dictionary - MISSED THIS
        var stringDict = [String: [String]]()

        // make the dict first
        for s in strs {
            // sort key
            let key = String(s.sorted())
            stringDict[key, default: []].append(s)
        }
        // print(Array(stringDict.values))
        return Array(stringDict.values)
    }
}
