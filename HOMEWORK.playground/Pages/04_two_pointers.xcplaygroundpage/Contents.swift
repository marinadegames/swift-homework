import Foundation

// ====================================================== //
//1. Перевернуть строку без использования reversed()
//"hello" -> "olleh"

//func reverse(string: String) -> String {
//    var result: [String] = Array(string).compactMap{String($0)}
//    var leftIndex = 0
//    var rightIndex = string.count - 1
//    
//    while leftIndex < rightIndex {
//        result.swapAt(leftIndex, rightIndex)
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    
//    return result.joined()
//}
//
//print(reverse(string: "hello"))

// ====================================================== //
//2. Определить что слово является палиндромом
//"kayak" -> true
//"level" -> true
//"wow" -> true
//"hay" -> false

//func isPalindrom(string: String) -> Bool {
//    var leftIndex = 0
//    var rightIndex = string.count - 1
//    var arr = Array(string)
//    
//    while leftIndex < rightIndex {
//        if (arr[leftIndex] != arr[rightIndex]) {
//            return false
//        }
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    
//    return true
//}
//
//print(isPalindrom(string: "kayak"))
//print(isPalindrom(string: "level"))
//print(isPalindrom(string: "wow"))
//print(isPalindrom(string: "hay"))

// ====================================================== //
//3. Найти индекс единственного нечетного числа в массиве
//
//[2, 4, 6, 7, 10] -> 3
//[4, -8, -10, 6, 8, 11, 100] -> 5
//[2, 4, 8, 10] -> nil

//func addOne(_ array: [Int]) -> Int? {
//
//    var leftIndex = 0
//    var rightIndex = array.count - 1
//    
//    while leftIndex < rightIndex {
//        if (array[leftIndex] % 2 != 0) { return leftIndex }
//        if (array[rightIndex] % 2 != 0) { return rightIndex }
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    
//    
//    return nil
//}
//
//print(addOne([2, 4, 6, 7, 10]) ?? nil);
//print(addOne([4, -8, -10, 6, 8, 11, 100]) ?? nil);
//print(addOne([2, 4, 8, 10]) ?? nil);

// ====================================================== //
//4. Дан отсортированный массив, вернуть пары сумм которых равна таргету
//[-3,-2,-1,0,1,2,3] , target: 0 -> [[-3,3], [-2,2], [-1,1]]

//func sumPairs(_ nums: [Int], target sum: Int) -> [[Int]] {
//    var result: [[Int]] = []
//    var leftIndex = 0
//    var rightIndex = nums.count - 1
//    
//    while leftIndex < rightIndex {
//        if (nums[leftIndex] + nums[rightIndex] == sum) {
//            result.append([nums[leftIndex], nums[rightIndex]])
//        }
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    
//    return result
//}
//
//print(sumPairs([-3,-2,-1,0,1,2,3], target: 0))

// ====================================================== //
//5. Есть массив целых чисел, необходимо вернуть индексы двух чисел сумма которых равна таргету.
// Можно считать что массив имеет одно решение. Нельзя использовать одно и то же число дважды.
//
//[2, 7, 11, 15], 9 -> [0, 1]

//func twoSum(_ numsArray: [Int], target sum: Int) -> [Int] {
//    var result: [Int] = []
//   
//    for (firstIndex, firstNum) in numsArray.enumerated() {
//        for (secondIndex, secondNum) in numsArray.enumerated() {
//            if (firstIndex == secondIndex) {
//                continue
//            }
//            if (firstNum + secondNum == sum) {
//                result.append(firstIndex)
//            }
//            
//            if (result.count == 2) {
//                return result
//            }
//        }
//    }
//    
//    return result
//}
//
//print(twoSum([2, 7, 11, 15], target: 9))

// ====================================================== //
//6. Удалить дубликаты из отсортированного массива.
//[0,0,1,1,1,2,2,3,3,4] -> [0, 1, 2, 3, 4]

//func removeDuplicated(_ nums: inout [Int]) -> [Int] {
//   
//    var counter = 0
//    
//    for item in 0...nums.count - 1 {
//        if (nums[item] != nums[counter]) {
//            counter += 1
//            nums[counter] = nums[item]
//        }
//    }
//    
//    return Array(nums[0...counter])
//}
//
//var arr = [0,0,1,1,1,2,2,3,3,4]
//print(removeDuplicated(&arr))

// ====================================================== //
//7. Вернуть количество уникальных элементов.
//[0,0,1,1,1,2,2,3,3,4] -> 5

//func countUniqueElements(_ nums: inout [Int]) -> Int {
//    var counter = 0
//
//    for item in 0...nums.count - 1 {
//        if (nums[counter] != nums[item]) {
//            counter += 1
//            nums[counter] = nums[item]
//        }
//    }
//
//    return nums[0...counter].count
//}
//
//var arr = [0,0,1,1,1,2,2,3,3,4]
//print(countUniqueElements(&arr))

// ====================================================== //
//8. Удалить элементы в массиве по таргету
//[1, 2, 3, 2, 1], target - 2, -> [1, 3, 1]

//func removeElements(_ array: [Int], target: Int) -> [Int] {
//    var newArr: [Int] = []
//    
//    for item in array {
//        if (item != target) {
//            newArr.append(item)
//        }
//    }
//    
//    return newArr
//}
//
//print(removeElements([1, 2, 3, 2, 1], target: 2))

// ====================================================== //
//9. Есть массив чисел и число таргет, нужно удалить из массива все числа target и посчитать сколько осталось
//[3, 2, 2, 3], target = 3, -> 2

//func removeElement(_ nums: inout [Int], _ target: Int) -> Int {
//    var startIndex = nums.count
//    
//    for item in 0...nums.count - 1 {
//        if (nums[item] != target){
//            nums.append(nums[item])
//        }
//    }
//
//    return nums[startIndex...nums.count - 1].count
//}
//
//var arr = [3, 2, 2, 3]
//print(removeElement(&arr, 3))
// ====================================================== //
//10. Проверить что фраза является валидным палиндромом
//"A man, a plan, a canal: Panama" -> true
//"race a car" -> false

//func isPalindrome(_ s: String) -> Bool {
//    var newStr = s.filter{$0.isLetter}.map{$0.lowercased()}
//    var leftIndex = 0
//    var rightIndex = newStr.count - 1
//    print (newStr)
//    
//    while leftIndex < rightIndex {
//        if (newStr[leftIndex] != newStr[rightIndex]){
//            return false
//        }
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//    
//    return true
//}
//
//print(isPalindrome("A man, a plan, a canal: Panama"))
//print(isPalindrome("race a car"))

// ====================================================== //

//11. Даны 2 отсортированных значения нужно найти их пересечения
//[4,5,9,11] и [1, 2, 3, 4, 5, 5, 9] -> [4, 5, 9]

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var resultArr: [Int] = []
    var index1 = 0
    var index2 = 0
    
    while index1 < nums1.count || index2 < nums2.count {
        if (nums1[index1] == nums2[index2]) {
            resultArr.append(nums1[index1])
            index2 += 1
        }
        
        index1 += 1
    }
    
    return resultArr
}

print(intersection([4,5,9,11], [1, 2, 3, 4, 5, 5, 9]))

// ====================================================== //

//func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
//    var result: [Int] = [-1, -1]
//    var leftIndex = 0
//    var rightIndex = nums.count - 1
//    var leftIndexFlag = false
//    var rightIndexFlag = false
//    
//    while leftIndex <= rightIndex {
//        if nums[leftIndex] == target && !leftIndexFlag {
//            result[0] = leftIndex
//            leftIndexFlag = true
//        }
//        
//        if nums[rightIndex] == target && !rightIndexFlag {
//            result[1] = rightIndex
//            rightIndexFlag = true
//        }
//        
//        if !leftIndexFlag {
//            leftIndex += 1
//        }
//        
//        if !rightIndexFlag {
//            rightIndex -= 1
//        }
//        
//        if (rightIndexFlag && leftIndexFlag) {
//            return result
//        }
//
//    }
//    
//    return result
//}
//
//print(searchRange([5,7,7,8,8,10], 8)) // [3,4]
//print(searchRange([5,7,7,8,8,10], 6)) // [-1, -1]
//print(searchRange([], 0)) // [-1, -1]


// ====================================================== //
// ====================================================== //


