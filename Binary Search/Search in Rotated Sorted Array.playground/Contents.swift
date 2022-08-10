import UIKit

var greeting = "Hello, playground"

//https://leetcode.com/problems/search-in-rotated-sorted-array/

let nums = [4,5,6,7,0,1,2], target = 3

class Solution {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        let pivot = getPivotElementIndex(nums, target)
        
        if (target >= nums[pivot] && target <= nums[nums.count - 1]){
            
            return binarySearch(nums: nums, target: target, start: pivot, end: nums.count - 1)
        }else{
            return binarySearch(nums: nums, target: target, start: 0, end:pivot - 1)
        }
    }
    func binarySearch(nums:[Int],target:Int, start: Int, end:Int) -> Int{
    var start = start
    var end = end
     var ans = -1
    var mid = start + (end - start)/2
    while(start <= end){
        
        if nums[mid] == target {
            ans = mid
            return ans
        }
        
        if nums[mid] < target {
            start = mid + 1
        }else{
            end = mid - 1
        }
        mid = start + (end - start)/2
    }
    return ans
}
    
    func getPivotElementIndex(_ nums: [Int], _ target: Int) -> Int {
       
        var start = 0
        var end = nums.count - 1
        var mid = start + (end - start)/2
        
        while(start < end){
            if nums[mid] >= nums[0]{
                start = mid + 1
            }else{
                end = mid
            }
            mid = start + (end - start)/2
        }
        return start
    }

}

Solution().search(nums, target)
