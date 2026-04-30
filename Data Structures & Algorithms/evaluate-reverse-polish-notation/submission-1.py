class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        
        stack = []

        for s in tokens: 

            # if we have a +, *, -, /

            if s == "+":
                val1 = stack.pop()
                val2 = stack.pop()
                stack.append(val1 + val2)
            elif s == "-":
                val1 = stack.pop()
                val2 = stack.pop()
                stack.append(val2 - val1)
            elif s == "*":
                val1 = stack.pop()
                val2 = stack.pop()
                stack.append(val1 * val2)
            elif s == "/":
                val1 = stack.pop()
                val2 = stack.pop()
                stack.append(int(val2 / val1))

            # append numbers to stack 
            else: 
                stack.append(int(s))
        return stack[0]

        