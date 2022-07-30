import UIKit

var greeting = "Hello, playground"

let nums = [0,2,1,0,2,1,0]
print(nums)

func sort0s1s2s(_ nums:[Int]) -> [Int]{

    var arr = nums
    var i = 0
    var j = arr.count - 1
    var  k = arr.count - 1

    while (i < j) {
        
      print("step \(i)")
        while (arr[i] == 0){
            i += 1
        }
        while (arr[j] == 1){
            j -= 1
        }
        
        while (arr[k] == 2){
            k -= 1
        }
        
        if (arr[i] == 1 && arr[j] == 0) && i < j{
            arr.swapAt(i, j)
            i += 1
            j -= 1
        }
        
        if (arr[i] == 2 && arr[k] == 1) && i < k{
            arr.swapAt(i, k)
            i += 1
            k -= 1
        }
    
    }
    print(arr)
    return arr
}
sort0s1s2s(nums)


