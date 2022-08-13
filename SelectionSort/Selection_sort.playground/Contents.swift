import UIKit

var greeting = "Hello, playground"

var nums = [4,3,2,1]


func sortElements(){
    
    for i in nums.indices{
        var minIndex = i
        for j in stride(from: i + 1, through: nums.count - 1, by: 1){
            if nums[minIndex] > nums[j]{
                minIndex = j
            }
            
        }
        let temp = nums[i]
        nums[i] = nums[minIndex]
        nums[minIndex] = temp
        
    }
    print(nums)
}

sortElements()

