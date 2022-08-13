import UIKit

var greeting = "Hello, playground"

var num = 2301
var ans = [Int]()

func convertIntToArray(){

    while(num > 0){
        ans.insert(num % 10, at: 0)
        num = num / 10
    }
    print(ans)
}

convertIntToArray()


