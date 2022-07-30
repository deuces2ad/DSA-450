import UIKit

var greeting = "Hello, playground"


var givenArr = [3,2,1,5,6,4]

func sort(with nums:[Int]){
    var count = 0
    var rawArray = nums
    while count < nums.count - 1 {
        
        if nums[count] > nums[count + 1]{
            print("swap numbers!","\(rawArray[count])and \(rawArray[count + 1])")
            let temp = rawArray[count + 1]
            rawArray[count + 1] = rawArray[count]
            rawArray[count] = temp
        }else{
            
        }
        count += 1
        print(rawArray)
    }
}
sort(with: givenArr)
