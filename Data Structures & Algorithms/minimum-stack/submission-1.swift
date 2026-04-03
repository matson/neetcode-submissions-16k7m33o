class MinStack {
    var stack: [Int] = []
    
    init() {

    }

    func push(_ val: Int) {
        // O(1)
        stack.append(val)
    }

    func pop() {
        // O(1)
        stack.removeLast()
    }

    func top() -> Int {
        // O(1)
        return stack.last!
    }

    func getMin() -> Int {
       // O(n)
        var min = stack[0] // first element
        for i in 0..<stack.count{
            if stack[i] < min{
                min = stack[i]
            }
        }
        return min
    }
}
