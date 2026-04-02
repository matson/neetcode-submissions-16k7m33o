class Solution {
    func isValid(_ s: String) -> Bool {
         var strArr = Array(s)
        // our stack
        var stack: [Character] = []
        
        var dict: [Character:Character] = [:]
        dict[")"] = "("
        dict["]"] = "["
        dict["}"] = "{"
        
        // go through
        for char in strArr{
            // if an open
            if let open = dict[char] {
                // if the stack is not empty, and the last
                if !stack.isEmpty && stack.last! == open {
                    stack.popLast()
                } else{
                    return false
                }
            } else {
                stack.append(char)
            }
            
        }
        // if empty it is true
        return stack.isEmpty

    }
}
