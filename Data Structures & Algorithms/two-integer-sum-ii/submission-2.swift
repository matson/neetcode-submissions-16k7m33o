class Solution {
        func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
               // two pointer solution
            var L = 0
            var R = numbers.count - 1
            
            while L < R {
                if numbers[L] + numbers[R] > target{
                    R -= 1
                }else if numbers[L] + numbers[R] < target {
                    L += 1
                }else{
                    return [L+1, R+1]
                }
            }
            return [] 

        }
}


