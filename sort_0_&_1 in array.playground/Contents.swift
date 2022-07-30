import UIKit

var greeting = "Hello, playground"

//https://leetcode.com/problems/sort-array-by-parity/

var nums = [0,1,0,1,0,1]


    func sortArrayByParity(_ nums: inout [Int]) -> [Int] {
        
        var i = 0
        var j = nums.count - 1
        while i < j {
            if nums[i]%2 == 0 {
                i += 1
            }else if nums[i]%2 != 0{
                let temp =  nums[i]
                nums[i] = nums[j]
                nums[j] = temp
                j -= 1
            }
        }
        print(nums)
        return nums
    }

sortArrayByParity(&nums)



