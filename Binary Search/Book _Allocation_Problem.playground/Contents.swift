//import UIKit
//
//var greeting = "Hello, playground"
//
////https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/
//
//let weights = [4,2,1,3,6], days = 2
//class Solution {
//    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
//        var start = 0
//        var end = weights.reduce(0){$0 + $1}
//        var mid = start + (end - start) / 2
//        var ans = -1
//        while(start <= end){
//            if isPossible(with: mid,givenDays: days,weights: weights){
//                ans = mid
//                end = mid - 1
//            }else{
//                start = mid + 1
//            }
//            mid = start + (end - start) / 2
//        }
//
//        return ans
//    }
//
//    func isPossible(with mid : Int , givenDays: Int,weights:[Int]) -> Bool{
//        var totalWeight = 0
//        var dayCount = 1
//
//
//        for weight in weights{
//            if (totalWeight + weight) <= mid {
//                totalWeight += weight
//            }else{
//                dayCount += 1
//                if dayCount > givenDays || weight > mid {
//                    return false
//                }
//                totalWeight = weight
//            }
//        }
//        return true
//    }
//}
//
//Solution().shipWithinDays(weights, days)


class Solution {
    func plusOne(_ digits: [Int]) {
            var offset = 1, result = digits
            for i in stride(from: digits.count - 1, through: 0, by: -1) {

                result[i] += offset
                offset = result[i] / 10
                result[i] %= 10
                print(result[i])
            }
        
            if offset > 0 { result.insert(offset, at: 0) }
        print(result)
        }
    
}

Solution().plusOne([5,1,1,1,1])
