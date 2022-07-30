import UIKit

var greeting = "Hello, playground"


func printFebonacciSeries(upto num:Int){
    var firstNumber = 0
    var secondNumber = 1
    print(firstNumber,terminator: " ")
    
    for (n) in 0..<num{
        let nextNum = firstNumber + secondNumber
         print(nextNum,terminator: " ")
        
         firstNumber = secondNumber
        secondNumber = nextNum
        
    }
    
}

printFebonacciSeries(upto: 10)
