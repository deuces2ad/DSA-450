import UIKit

var greeting = "Hello, playground"


func checPrimeNumber(for number : Int){
    
    for num in 2...number - 1 {
        
        if number % num == 0 {
            print(number,"is divisble by",num,"so not a prime number")
            return
        }
    }
    print(number,"is prime")

}
checPrimeNumber(for: 61)
