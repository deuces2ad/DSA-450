
//https://leetcode.com/problems/find-all-duplicates-in-an-array/

let nums = [4,3,2,7,8,2,3,1]


func findDuplicates(_ nums: [Int]) -> [Int]{
    var result = [Int]()
    var countMap = [Int:Int]()
    
    for num in nums {
        countMap[num , default: 0] += 1
    }
    print(countMap)
     countMap.filter({ (key,count) in
        if count == 2 {
            print(key)
            result.append(key)
        }
         return true
    })
    return result
}
findDuplicates(nums)
