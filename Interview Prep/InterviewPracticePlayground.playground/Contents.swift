import UIKit

// Given array of Ints, find the odd values

func findOddNumbers(nums: [Int]) -> [Int] {
    var oddNumbers = [Int]()
    
    for number in nums {
        if number % 2 != 0 {
            oddNumbers.append(number)
        } else {
            continue
        }
    }
    
    return oddNumbers
}

let testArray1 = [1,2,4,7,9,13,14]
let testArray2 = [0,3,5,6,8,11,21,22,23,24,25,26]

let result1 = findOddNumbers(nums: testArray1)
let result2 = findOddNumbers(nums: testArray2)

print("Array 1: \(testArray1) \nOdd numbers: \(result1)\n")
print("Array 2: \(testArray2) \nOdd numbers: \(result2)\n")

let negativeTestArray = [-24, -5, -4, -3, 0, 1, 4, 7, 9, 10]
let negativeResult = findOddNumbers(nums: negativeTestArray)
print("Negative Array: \(negativeTestArray) \nOdd numbers: \(negativeResult)\n")


