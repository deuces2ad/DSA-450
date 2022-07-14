import UIKit

//Print first n prime number in a given range

func printPrimeNumberUpto( range: Int){
   
    for currentNumber in 2...range {
        var isPrime = true
        for num in stride(from: 2, to: currentNumber, by: 1){
            if currentNumber % num == 0 {
                isPrime = false
                print(currentNumber,"is not prime as divisble by",num)
                break
            }
        }
        if isPrime{
            print(currentNumber,"is prime")
        }
    }
}

printPrimeNumberUpto(range: 49)
