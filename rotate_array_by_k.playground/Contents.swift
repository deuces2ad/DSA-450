

var nums = [1,2,3,4,5]

func rotate(_ nums: inout [Int], _ k: Int) {
    var val = 0
    while val < k {
        let lastElement = nums.last!
        nums.insert(lastElement, at: 0)
        nums.removeLast()
        val += 1
    }
}
