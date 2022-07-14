import UIKit

var greeting = "Hello, playground"

func printOddNumbers(upto range : Int){
   
    for number in 0...range {

        if number % 2 == 1 {
            print(number)
        }
    }
}

printOddNumbers(upto: 10)
