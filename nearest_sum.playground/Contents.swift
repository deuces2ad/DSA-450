import UIKit

var greeting = "Hello, playground"

let nums = [4,0,5,-5,3,3,0,-4,-5], target = -2


class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var diff = Int.max
        var ans = 0
        let arr = nums.sorted()

        for i in arr.indices {

            var start = i + 1
            var end = nums.count - 1
            
            while(start < end){
                let sum = arr[i] + arr[start] + arr[end]

                if  target > sum {
                    start += 1
                }else{
                    end -= 1
                }
                
                if abs(target - sum) < diff {
                    diff = abs(target - sum)
                    ans = sum
                }

            }

        }
        return ans
    }
}
Solution().threeSumClosest(nums, target)
 
