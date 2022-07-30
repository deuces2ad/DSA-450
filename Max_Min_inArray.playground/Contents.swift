import UIKit

var greeting = "Hello, playground"

let givenArr = [3,2,1,5,6,4]

//func maxAndMin(in numArr:[Int]) -> (Int,Int){
//    var maxNum = 0
//    var minNum = 0
//
//    for item in numArr {
//        if item > maxNum {
//            maxNum = item
//        }else if item < minNum{
//            minNum = item
//        }
//    }
//
//    print((maxNum,minNum))
//    return (maxNum,minNum)
//}

func maxAndMin(in numArr:[Int]) -> (Int,Int){
    var maxNum = 0
    var minNum = 0
   
    for item in numArr {
        if item > maxNum {
            maxNum = max(item, maxNum)
        }else if item < minNum{
            minNum = min(item, minNum)
        }
    }
   
    print((maxNum,minNum))
    return (maxNum,minNum)
}
maxAndMin(in: [-2,0,4,-10])
