import UIKit

var greeting = "Hello, playground"

let nums = [-1,0,1,2,-1,-4]

//func threeSum(_ nums: [Int]) -> [[Int]] {
//    var result = [[Int]]()
//    for i in nums.indices {
//        for j in stride(from: i + 1, to: nums.count, by: 1){
//            for k in stride(from: j + 1, to: nums.count, by: 1){
//                if nums[i] + nums[j] + nums[k] == 0{
//                    let numsArr = [nums[i],nums[j],nums[k]].sorted()
//                    let ans = Array([Array(numsArr)])
//                    result.append(contentsOf: ans)
//                }
//            }
//        }
//    }
//    print(Set(result))
//    return (result)
//}


    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [[Int]]() }
        let sorted = nums.sorted()
        print(sorted)
        var result = [[Int]]()
        
        for i in 0..<sorted.count {
            // Don't allow `i` to point to same element
            if i != 0, sorted[i] == sorted[i-1] {
                print(sorted[i],sorted[i-1],i)
                continue
                
            }
          
            var j = i + 1
            var k = sorted.count-1
            while j < k {
                let sum = sorted[i] + sorted[j] + sorted[k]
                if sum == 0 {
                    result.append([sorted[i], sorted[j], sorted[k]])
                    j += 1
                    // Don't allow `j` to point to same element
                    while j < k, sorted[j] == sorted[j-1] {
                        j += 1
                    }
                } else if sum < 0 {
                    j += 1
                } else {
                    k -= 1
                }
            }
        }
        return result
    }
threeSum(nums)

