import UIKit

var greeting = "Hello, playground"


var givenArr = [3,2,1,5,6,4]

//func sort(with nums:[Int]){
//    var count = 0
//    var rawArray = nums
//    while count < nums.count - 1 {
//
//        if nums[count] > nums[count + 1]{
//            print("swap numbers!","\(rawArray[count])and \(rawArray[count + 1])")
//            let temp = rawArray[count + 1]
//            rawArray[count + 1] = rawArray[count]
//            rawArray[count] = temp
//        }else{
//
//        }
//        count += 1
//        print(rawArray)
//    }
//}
//sort(with: givenArr)

func reverNumberFrom(k:Int,nums: inout [Int]){
    var counter = 0
    while (counter <= k){
        nums.swapAt(nums.count - 1, 0)
        counter += 1
    }
}

class Solution {
    func reverNumberFrom(k:Int,nums: inout [Int]){
        var counter = 0
        while (counter <= k){
            nums.swapAt(nums.count - 1, 0)
            counter += 1
        }
    }
}

func shiftArray(_ nums: inout [Int]) {
       let lastElementIndex = nums.count - 1
       for index in 0..<lastElementIndex {
           let revertIndex = lastElementIndex - index
           let rightValue = nums[revertIndex]
           nums[revertIndex] = nums[revertIndex - 1]
           nums[revertIndex - 1] = rightValue
       }
   }

shiftArray(nums)
