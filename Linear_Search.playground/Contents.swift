import UIKit

var greeting = "Hello, playground"
let givenArr = [3,2,1,5,6,4]

func linearSearch(givenArrWith items:[Int], key: Int) -> Bool{
    
    for item in items {
        if item == key{
            return true
        }
    }
    return false
}

linearSearch(givenArrWith: givenArr, key: 15)
