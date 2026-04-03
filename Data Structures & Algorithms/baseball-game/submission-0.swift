class Solution {
    func calPoints(_ operations: [String]) -> Int {
       // brute force?
        var record: [Int] = []
        
        for i in 0..<operations.count {
            // "+" rule
            if operations[i] == "+"{
                // add two previous scores together
                let last = record[record.count - 1]
                let secondLast = record[record.count - 2]
                record.append(last + secondLast)
            }
            // "C" rule
            else if operations[i] == "C"{
                record.removeLast()
            }
            // "D" rule
            else if operations[i] == "D"{
                let last = record.last! * 2
                record.append(last)
            }
            else{
                // add the number to the stack
                record.append(Int(operations[i])!)
            }
        }
        // return sum
        return record.reduce(0, +)
    }
}
