import UIKit

var greeting = "Hello, playground"

class Solution {
    
    func findEvenNumbers(_ range : Int){

        var evenNumber = 2
        
        for _ in 0...range{
            
            if range <= evenNumber{
                print("Done printing even numbers! Volla")
                return
            }else{
                print(evenNumber)
                evenNumber = evenNumber + 2
            }
        }
    }
}

let solution = Solution()
solution.findEvenNumbers(50)
