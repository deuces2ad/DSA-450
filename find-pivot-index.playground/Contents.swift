import UIKit

var greeting = "Hello, playground"
let nums = [1,7,3,6,5,6]
//https://leetcode.com/problems/find-pivot-index/
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var right = 0
        var ans = -1
        for i in nums{
            right += i
        }
        
        var left = 0
        for (index,j) in nums.enumerated(){
            right -= j
            if right == left{
                ans = index
                return ans
            }
            left += j
        }
        return ans
    }
}

Solution().pivotIndex(nums)
