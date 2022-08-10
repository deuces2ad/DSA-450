import UIKit

var greeting = "Hello, playground"
//https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
       var result  = [Int]()
        let left = firstOcccurence(for: nums, key: target)
        let right = lastOcccurence(for: nums, key: target)
        result.append(left)
        result.append(right)
    print(result)
        return result
    }
    
    func lastOcccurence(for arr:[Int], key:Int) -> Int {

        var start = 0
        var end = arr.count - 1
        var mid = start + (end - start)/2
        var ans = -1

        while(start <= end){

            if (arr[mid] == key){

                ans = mid
                start = mid + 1

            }else if arr[mid] < key { // right mai jao
                 start = mid + 1
            }else if arr[mid] > key{
                end = mid - 1
            }
             mid = start + (end - start)/2

        }
        return ans
    }
    
    func firstOcccurence(for arr:[Int], key:Int) -> Int{

        var start = 0
        var end = arr.count - 1
        var mid = start + (end - start)/2
        var ans = -1

        while(start <= end){

            if (arr[mid] == key){
                ans = mid
                end = mid - 1
            }else if arr[mid] < key { // right mai jao
                 start = mid + 1
            }else {// left mai jao
                end = mid - 1
            }
             mid = start + (end - start)/2

        }
        return ans
    }

}

Solution().searchRange([1,2,3], 3)
