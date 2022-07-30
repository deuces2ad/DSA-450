import UIKit

var greeting = "Hello, playground"

let givenArr = [3,2,1,5,6,4]

func sumOfElements(of array: [Int]) -> Int {
    var sum = 0
    
    for index in array.indices{
        sum += array[index]
    }
    print(sum)
    return sum
}
sumOfElements(of: givenArr)
