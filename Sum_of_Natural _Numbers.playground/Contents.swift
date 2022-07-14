import UIKit

var greeting = "Hello, playground"


func findSumofNaturalNumbers(with range: Int){
    
    var sum = 0
    for number in 0...range{
        sum = sum + number
    }
    print(sum)
}

findSumofNaturalNumbers(with: 100)

