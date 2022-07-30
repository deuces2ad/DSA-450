import UIKit

var greeting = "Hello, playground"
var givenArray = [1,4,2,5,0,8]

func swapAlternateNumbers(items : inout [Int])->[Int]{
   
    for index in stride(from: 0, to: items.count - 1, by: 2) {
        if index + 1 < items.count {
            let i = items[index]
            let j = items[index + 1]
            items[index] = j
            items[index + 1] = i
            print(i,j)
        }
       
    }
    print(items)
    return items
}

swapAlternateNumbers(items: &givenArray)

