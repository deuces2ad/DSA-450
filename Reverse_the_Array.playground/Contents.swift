

//https://www.geeksforgeeks.org/write-a-program-to-reverse-an-array-or-string/


let givenArray = [8,4,0,1,5]


func reverseTheArray(for numArray: [Int]) -> [Int]{
    var resultArry = [Int]()
    
    for (index,_) in numArray.enumerated(){
        let oldValueIndex = (numArray.count - 1) - index
        let valueToReverse = numArray[oldValueIndex]
        resultArry.append(valueToReverse)
    }
    print(resultArry)
    print("",terminator: " ")
    print(givenArray)
   
    return resultArry
}

reverseTheArray(for: givenArray)
