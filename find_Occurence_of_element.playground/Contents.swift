import UIKit

var greeting = "Hello, playground"

let arr = [1,2]

func uniqueOccurrences(_ arr: [Int]) -> Bool{

    var countOccurrenceDict : [Int:Int] = [:]
    
    for item in arr {
        countOccurrenceDict[item , default: 0] += 1
    }
    print(countOccurrenceDict)
    let valueCount = Set(Array(countOccurrenceDict.values)).count
    let keyCount = countOccurrenceDict.keys.count
    print("valueCount",valueCount)
    print("keyCount",keyCount)
    return valueCount == keyCount
}
uniqueOccurrences(arr)



