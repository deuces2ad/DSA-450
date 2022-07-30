

//https://www.geeksforgeeks.org/write-a-program-to-reverse-an-array-or-string/


var givenArray = [1,2,3]


//func reverseTheArray(for numArray: [Int]) -> [Int]{
//    var resultArry = [Int]()
//
//    for (index,_) in numArray.enumerated(){
//        let oldValueIndex = (numArray.count - 1) - index
//        let valueToReverse = numArray[oldValueIndex]
//        resultArry.append(valueToReverse)
//    }
//    print(resultArry)
//    print("",terminator: " ")
//    print(givenArray)
//
//    return resultArry
//}

//reverseTheArray(for: givenArray)

func reverseAnArray(givenArray: inout [Int])-> [Int]{
    
    var startIndex = 0
    var endIndex = givenArray.count - 1

    while startIndex < endIndex {
        let firstElement = givenArray[startIndex]
        let lastElement = givenArray[endIndex]
        givenArray[startIndex] = lastElement
        givenArray[endIndex] = firstElement
        startIndex += 1
        endIndex -= 1
    }
    print(givenArray)
    return givenArray
}

reverseAnArray(givenArray: &givenArray)
