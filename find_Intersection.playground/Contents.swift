import UIKit

//https://leetcode.com/problems/intersection-of-two-arrays/

var greeting = "Hello, playground"

let nums1 = [1,2,2,1], nums2 = [2,2]

func interSection(_ nums1:[Int],_ nums2:[Int]) -> [Int]{
    var result = [Int]()
    for num in nums1 {
        if nums2.contains(num){
            result.append(num)
        }
    }
    return Array(Set(result))
}

interSection(nums1, nums2)

