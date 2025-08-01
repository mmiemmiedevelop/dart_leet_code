class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = map[complement] {
                return [complementIndex, index] // Return the indices of the two numbers
            }
            map[num] = index
        }
        return [] // Return an empty array if no solution is found
    }
}