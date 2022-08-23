import PlaygroundSupport
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true

var greeting = "Hello, playground"

var num = 2301
var ans = [Int]()

//func convertIntToArray(){
//
//    while(num > 0){
//        ans.insert(num % 10, at: 0)
//        num = num / 10
//    }
//    print(ans)
//}
//
//convertIntToArray()

var counter = 1

DispatchQueue.main.async {
    for i in 0...3{
        counter = i
        print(counter)
    }
}

for i in 4...6{
    counter = i
    print(counter)
}

DispatchQueue.main.async {
    counter = 9
    print(counter)
}

