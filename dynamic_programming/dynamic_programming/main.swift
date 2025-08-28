import Foundation

//1. Найти самую длинную последовательность гласных
//"suoidea" -> 3
//"iiihoovaeaaaoougjyaw" -> 8
//"" -> 0

//let vowels: [Character] = ["a", "e", "i", "o", "u"]
//
//func countLongestVowelsChain(_ string: String) -> Int {
//    let arrStr: [Character] = Array(string)
//    var counters: [Int] = []
//    var currentCounter = 0
//    
//    for item in arrStr {
//        if vowels.contains(item) {
//            currentCounter += 1
//        } else{
//            counters.append(currentCounter)
//            currentCounter = 0
//        }
//    }
//    
//    return counters.max() ?? 0
//}
//
//print(countLongestVowelsChain("suoidea"))
//print(countLongestVowelsChain("iiihoovaeaaaoougjyaw"))
//print(countLongestVowelsChain(""))

// ===============================================================
//2. Найти самую длинную последовательность одинаковых символов
//"abbcccd" -> "ccc"
//"abbcccdddd" -> "dddd"

//func countLongestSubsequence(_ string: String) -> String {
//    let newCharacters = Array(string)
//    var result: [Character: Int] = [:]
//    
//    for item in newCharacters {
//        result[item] = (result[item] ?? 0) + 1
//    }
//    
//    let maxItem = result.max{$0.value < $1.value} ?? nil
//    var newArr = Array(repeating: maxItem?.key ?? "a", count: maxItem?.value ?? 1)
//    
//    return newArr.compactMap{String($0)}.joined()
//}
//
//print(countLongestSubsequence("abbcccd"))
//print(countLongestSubsequence("abbcccdddd"))



// =============================================================== //

//3. Разбить строку на N строк
//"abcdef", 2 -> ["abc", "def"]
//"abcdef", 3 -> ["ab", "cd", "ef"]

//func splitNCases(_ string: String, n: Int) -> [String] {
//    let arr = Array(string).compactMap{String($0)}
//    let step = (arr.count) / n
//
//    var result: [String] = []
//    var counter = 0
//    
//    var start = 0
//    var end = step - 1
//    
//    while counter < arr.count {
//        if (counter == end) {
//            let newArr = arr
//            let newStr = newArr[start...end].joined()
//            result.append(newStr)
//            start = counter + 1
//            end = counter + step
//        }
//        
//        counter += 1
//    }
//    
//    
//    return result
//}
//
//print(splitNCases("abcdef", n: 2))
//print(splitNCases("abcdef", n: 3))

// =============================================================== //

//4. Найдите количество всех пар в массиве (использовать не больше 1 цикла)
//["1", "2", "2", "3", "5"] -> 1
//["1", "2", "2", "3", "5", "5", "1"] -> 3

//func countCouples(array: [Int]) -> Int {
//    var dict: [Int: Int] = [:]
//    var counter = 0
//    
//    for item in array {
//        dict[item, default: 0] += 1
//        
//        if dict[item] == 2 {
//            counter += 1
//        }
//    }
//
//    return counter
//}
//
//print(countCouples(array: [1, 2, 2, 3, 5]))
//print(countCouples(array: [1, 2, 2, 3, 5, 5, 1]))


// =============================================================== //
//5. Вытащить символы которые повторяются в строке больше всех раз
//"tomatto" -> ["t"]
//"sarsaparilla" -> ["a"]
//["abcdefab"] -> ["a", "b"]

//func appersMode(string: String) -> [String] {
//    let arr = Array(string).compactMap{String($0)}
//    var dict: [String: Int] = [:]
//    var maxValue = 0
//    
//    for item in arr {
//        dict[item, default: 0] += 1
//        
//        if dict[item] ?? 0 > maxValue {
//            maxValue = dict[item] ?? 0
//        }
//    }
//        
//    return dict.filter{$0.value == maxValue}.map{$0.key}
//}
//
//print(appersMode(string: "tomatto"))
//print(appersMode(string: "sarsaparilla"))
//print(appersMode(string: "abcdefab"))

// =============================================================== //

//6. Написать функцию сжатия RLE
//"AABBBXYZDDDDDDD" -> "A2B3XYZD7"

//func rle(string: String) -> String {
//    let arr = Array(string)
//    var counter = 1
//    var result = ""
//    
//    
//    for (index, item) in arr.enumerated() {
//        if index == arr.count - 1 {
//            result += "\(item)\(counter)"
//            break
//        }
//        
//        let nextItem = arr[index + 1]
//        
//        if arr[index] == nextItem {
//            counter += 1
//        } else {
//            if counter == 1 {
//                result += "\(item)"
//            } else {
//                result += "\(item)\(counter)"
//            }
//            counter = 1
//        }
//    }
//    
//    return result
//}
//
//print(rle(string: "AABBBXYZDDDDDDD"))
//print(rle(string: "AAABBBCCCDEFFFGG"))


// =============================================================== //
//7. Написать обратный RLE
// "A2B3XYZD7" -> "AABBBXYZDDDDDDD"
 
//func uncompressRLE(string: String) -> String {
//    let arr = Array(string).compactMap{String($0)}
//    var result: [[String]] = []
//    
//    for (index, item) in arr.enumerated() {
//        if index == arr.count - 1 { break }
//        
//        let nextItem = arr[index + 1]
//        
//        if let repeatNum = Int(nextItem) {
//            result.append(Array(repeating: item, count: repeatNum))
//            continue
//        }
//        
//        if Int(item) != nil {
//            continue
//        } else {
//            result.append([item])
//        }
//    }
//    
//    return result.joined().joined()
//}

//print(uncompressRLE(string: "A2B3XYZD7"))

// =============================================================== //
//8. Дан массив нужно сгруппировать в массив другого вида
//[1, 2, 2, 3, 3, 3] -> [[1], [2,2], [3, 3, 3]]

//func groupElements(array: [Int]) -> [[Int]] {
//    var result: [[Int]] = []
//    var currentArr: [Int] = []
//
//    
//    for (index, item) in array.enumerated() {
//        if (index == array.count - 1) {
//            currentArr.append(item)
//            result.append(currentArr)
//            break
//        }
//        
//        if (item == array[index + 1]) {
//            currentArr.append(item)
//        } else {
//            currentArr.append(item)
//            result.append(currentArr)
//            currentArr = []
//        }
//        
//    }
//    
//    return result
//}
//
//print(groupElements(array: [1, 2, 2, 3, 3, 3]))
//print(groupElements(array: [1,1,1,2,2,2,3,4,5,5,5,5,5,6]))

// =============================================================== //
//9. Дан отсортированный массив, преобразовать в строку сворачивая соседние числа в диапазоны
//[0,1,2,3,4,5,8,9,11] -> "0-5,8-9,11"
//[1,4] -> "1,4"

//func compressToRanges(array: [Int]) -> String {
//    var resultArr: [[Int]] = []
//    var currentArr: [Int] = []
//    var result: String = ""
//    
//    for (index, item) in array.enumerated() {
//        if index == array.count - 1 {
//            currentArr.append(item)
//            resultArr.append(currentArr)
//            currentArr = []
//            break
//        }
//        
//        if (item + 1 != array[index + 1]) {
//            currentArr.append(item)
//            resultArr.append(currentArr)
//            currentArr = []
//        } else {
//            currentArr.append(item)
//        }
//    }
//    
//
//    
//    for arr in resultArr {
//        var str: String = ""
//        
//        if (arr.count > 1) {
//            str = "\(arr.first ?? 0)-\(arr.last ?? 0),"
//        } else {
//            str = "\(arr.first ?? 0),"
//        }
//        
//        result = "\(result)\(str)"
//        
//    }
//    
//    result.removeLast()
//    
//    return result
//}
//
//print(compressToRanges(array:[0,1,2,3,4,5,8,9,11]))
//print(compressToRanges(array:[1,4]))


// =============================================================== //
//10. Удалять повторяющиеся слова которые идут последовательно
//"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"
//-> "alpha beta gamma delta alpha beta gamma delta"

//func removDuplicates(string: inout String) -> String {
//    let words: [String] = string.components(separatedBy: " ")
//    var result: [String] = []
//    
//    for item in words {
//        if (result.last != item) {
//            result.append(item)
//        }
//    }
//    
//    return result.joined(separator: " ")
//}
//
//var text = "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"
//print(removDuplicates(string: &text))

// =============================================================== //
//11. Даны даты заезда и отъезда каждого гостя. Для каждого гостя дата заезда строго раньше даты отъезда (то есть каждый гость останавливается хотя бы на одну ночь).
//В пределах одного дня считается, что сначала старые гости выезжают, а затем въезжают новые
//Найти максимальное число постояльцев, которые одновременно проживали в гостинице (считае, что измерение количества постояльцев происходит в конце дня)
//
//[(1,2),(1,3),(2,4),(2,3)] -> 3 (3 посетителя были на 2 день)
//
//func maxVisitors(array: [(Int, Int)]) -> Int {
//    return 123
//}
//
//print(maxVisitors(array: [(1,2),(1,3),(2,4),(2,3)]))
