import UIKit

var greeting = "Hello, playground"
var nums = [10,2,4]

func largestNumber(_ nums: [Int]) -> String {
    var nums = nums
    var result = ""
    for i in nums.indices {
        for j in stride(from: i + 1, through: nums.count  - 1, by: 1){
            if compareNumbers(i: nums[i], j: nums[j]){
                nums.swapAt(i, j)
                print("swap")
            }
        }

    }
    result = nums.map {"\($0)"}.joined()
    return result.first == "0" ? "0" : result
    
//    let result = nums.map { String($0) }.sorted(by: { ($0 + $1) > ($1 + $0) }).joined()
//            return result.first == "0" ? "0" : result
}

func compareNumbers(i:Int,j:Int) -> Bool{
    let firstNumber = Int("\(i)" + "\(j)") ?? 0
    let secondNumber =  Int("\(j)" + "\(i)") ?? 0
    if firstNumber < secondNumber {
        return true
    }
    return false
}

largestNumber(nums)
