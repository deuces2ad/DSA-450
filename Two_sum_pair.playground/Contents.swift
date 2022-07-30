import UIKit

var greeting = "Hello, playground"
//https://leetcode.com/problems/two-sum/submissions/

let nums = [3,2,4], target = 6

//MARK: - TIME limit got exceed!

//func twoSums(_ nums:[Int], _ target:Int) -> [Int]{
//    var result = [Int]()
//    for i in nums.indices {
//        for j in stride(from: i + 1, to: nums.count, by: 1){
//            print("i= \(i) and j = \(j)")
//            if nums[i] + nums[j] == target{
//                print(i,j)
//                result.append(i)
//                result.append(j)
//            }
//        }
//    }
//    return result
//}

//MARK: - OPTIMIZED!!
func twoSums(_ nums:[Int], _ target:Int) -> [Int]{
    var dict = [Int:Int]()
    for (index,num) in nums.enumerated(){
        dict[num] = index
    }
    print(dict)
    
    for (i,value) in nums.enumerated() {
        if let otherIndex = dict[target - value] , otherIndex != i {
            return[i,otherIndex]
        }
    }
    return [0,0]
}

twoSums(nums, target)
