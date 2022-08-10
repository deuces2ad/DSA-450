import UIKit

var greeting = "Hello, playground"

let givenArray = [0,1,2,0]

//https://leetcode.com/problems/peak-index-in-a-mountain-array/

class Solution {
   func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        
    var start = 0
    var end = arr.count - 1
    var mid = start + (end - start)/2
    
    while(start < end){
        if(arr[mid] < arr[mid + 1]){
            start = mid + 1
        }else{
            end = mid
        }
        mid = start + (end - start)/2
    }
    print(mid)
    return mid
}
}

Solution().peakIndexInMountainArray(givenArray)
