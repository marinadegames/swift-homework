import Foundation

//1. Написать функцию которая объединяет 2 множества
//[1,2] + [2,3] -> [1, 2, 3]

//func unionOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int> {
//    return lhs.union(rhs)
//}
//
//print(unionOperation(lhs: Set([1,2]), rhs: Set([2,3])))

// ================================================================== //
//2. Написать функцию которая возвращает пересечение множеств
//[1,2] [2,3] -> [2]

//func intersectionOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int> {
//    return lhs.intersection(rhs)
//}

//print(intersectionOperation(lhs: Set([1,2]), rhs: Set([2,3]))) // [2]


// ================================================================== //
//3. Функция возвращает разность между множествами A \ B (или A − B)
//[1, 2] - [1, 2] = nil
//[1, 2, 3, 4] - [1, 3] = [2, 4].

//func complementOperation(lhs: Set<Int>, rhs: Set<Int>) -> Set<Int>? {
//    let result = lhs.subtracting(rhs)
//    return result.isEmpty ? nil : result
//}
//
//print(complementOperation(lhs: Set([1, 2]), rhs: Set([1, 2])))
//print(complementOperation(lhs: Set([1, 2, 3, 4]), rhs: Set([1, 3])))

// ================================================================== //

//4. Проверить является ли множество A подмножеством множества B
//[1, 2] является подмножеством [1, 2, 3] -> true
//[1, 2, 3] не является подмножество [1, 2] -> false

//func isSubset(a: Set<Int>, b: Set<Int>) -> Bool {
//    return a.isSubset(of: b)
//}
//
//print(isSubset(a: [1, 2], b: [1, 2, 3]))
//print(isSubset(a: [1, 2, 3], b: [1, 2]))

// ================================================================== //
//5. Проверить является ли множество A надмножеством множества B
//[1, 2] не является надмножеством [1, 2, 3] -> true // maybe false
//[1, 2, 3] является надмножеством [1, 2] -> false // maybe true

//func isSuperset(a: Set<Int>, b: Set<Int>) -> Bool {
//    return a.isSuperset(of: b)
//}
//
//print(isSuperset(a: [1, 2], b: [1, 2, 3]))
//print(isSuperset(a: [1, 2, 3], b: [1, 2]))


// ================================================================== //
//6. Проверить что множество A тождественно множеству B
//[1, 2] == [2, 1] //true
//[1, 2] != [1, 2, 3] //false
//
//func isEqual(a: Set<Int>, b: Set<Int>) -> Bool {
//    return a.isSuperset(of: b)
//}
//
//print(isEqual(a: [1, 2] , b: [2, 1]))
//print(isEqual(a: [1, 2] , b: [1, 2, 3]))


// ================================================================== //
//7. Вернуть симметрическую разность множеств
//{7,8,9,10} Δ {9,10,11,12} = {7,8,11,12}.
//[1,2,3] [2,3,4] -> [1,4]

//func symmetricOperation(left: Set<Int>, right: Set<Int>) -> Set<Int> {
//    return left.symmetricDifference(right)
//}
//
//print(symmetricOperation(left: [7,8,9,10], right: [9,10,11,12]))
//print(symmetricOperation(left: [1,2,3], right: [2,3,4]))

// ================================================================== //
//8. Написать функцию которая подсчитывает только уникальные элементы
//[ 1, 2, 3] -> 6
//[ 1, 3, 8, 1, 8] -> 12
//[ -1, -1, 5, 2, -7] -> -1
//[] -> nil

//func uniqueSum(_ array: [Int]) -> Int {
//    return Set(array).reduce(0){$0 + $1}
//}
//
//print(uniqueSum([ 1, 2, 3]))
//print(uniqueSum([ 1, 3, 8, 1, 8]))
//print(uniqueSum([ -1, -1, 5, 2, -7]))
//print(uniqueSum([]))

// ================================================================== //

//9. Проверить что множества нересекающиеся
//[1, 2] и [3, 4] -> true
//[1, 2] и [2, 3] -> false

//func isDisjointSets(lhs: Set<Int>, rhs: Set<Int>) -> Bool {
//    return lhs.isDisjoint(with: rhs)
//}
//
//print(isDisjointSets(lhs:[1, 2] , rhs: [3, 4]))
//print(isDisjointSets(lhs:[1, 2] , rhs: [2, 3]))


// ================================================================== //
//10. Определить является ли слово изограммой (isogram) -
//слово в котором нет повторяющихся букв, последовательных или непоследовательных
//"Dermatoglyphics" -> true
//"moose" -> false
//"aba" -> false

//func isIsogramm(_ string: String) -> Bool {
//    return Set(string).count == string.count
//}
//
//print(isIsogramm("Dermatoglyphics"))
//print(isIsogramm("moose"))
//print(isIsogramm("aba"))


// ================================================================== //
//11. Есть ли дубликаты в массиве
//[1, 2, 3, 1] -> true
//[1, 2, 3, 4] -> false

//func countDuplicates(arr: [Int]) -> Bool {
//    return Set(arr).count != arr.count
//}
//
//print(countDuplicates(arr: [1, 2, 3, 1]))
//print(countDuplicates(arr: [1, 2, 3, 4]))


// ================================================================== //
//12. Найти разницу между строками
//"abcd", "abcde" -> "e"

//func findDifference(lhs: String, rhs: String) -> String {
//    return String(Set(lhs).symmetricDifference(Set(rhs)))
//}
//
//print(findDifference(lhs: "abcd", rhs: "abcde"))

// ================================================================== //
//13. Отсутсвующая цифра в отсортированой последовательности
//[0, 1, 3] -> 2
//[0, 1, 2] -> 3

//func missingNumber(array: [Int]) -> Int {
//    var counter = 0
//    
//    for item in array {
//        if (item != counter) {
//            return item - 1
//        }
//        
//        counter += 1
//    }
//    
//    return counter
//}

//print(missingNumber(array:[0, 1, 3] ))
//print(missingNumber(array:[0, 1, 2] ))
//print(missingNumber(array:[0, 1, 2, 3, 4, 5, 7, 8] ))
//print(missingNumber(array:[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12] ))

// ================================================================== //
//14. Найти разницу между массивами
//[1, 2, 3], [1, 2, 3, 4] -> 4

//func findDif(lhs: [Int], rhs: [Int]) -> Int {
//    return Set(lhs).symmetricDifference(Set(rhs)).first ?? 0
//}
//
//print(findDif(lhs: [1, 2, 3], rhs: [1, 2, 3, 4]))

// ================================================================== //

//15. Убрать дублирующие слова
//
//"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta" -> "alpha beta gamma delta"

//func removeDuplicateWords (_ phrase: String) -> String {
//    return Set(phrase.split(separator: " ")).joined(separator: " ")
//}
//
//print(removeDuplicateWords("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"))

// ================================================================== //
//16. Проверить что все символы уникальны
//
//"abcdef" -> true
//"aba" -> false

//func uniqChars(_ string: String) -> Bool {
//    return Set(string).count == string.count
//}
//
//print(uniqChars("abcdef"))
//print(uniqChars("aba"))

// ================================================================== //

//17. Проверить на то массив является валидным множеством
//(множество валидно когда все элементы уникальны)
//
//[1, 2, 3] -> true
//["green", "blue", "red"] -> true
//[1, 2, 1] -> false
//["blank", "solid", "blank"] -> false

//func isValidSet(list: [Any]) -> Bool {
//    return Set(list.compactMap{$0 as? AnyHashable}).count == list.count
//}
//
//print(isValidSet(list: [1, 2, 3]))
//print(isValidSet(list: ["green", "blue", "red"]))
//print(isValidSet(list: [1, 2, 1]))
//print(isValidSet(list: ["blank", "solid", "blank"]))

// ================================================================== //
// ================================================================== //
// ================================================================== //
