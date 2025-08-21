import Foundation

// ============================================================= //
//1. На входе строка нужно сконвертить ее в словарь (String -> Dictionary)
//"https://oauth.vk.com/blank.html#access_token=533bacf01e11f55b536a565b57531ad114461ae8736d6506a3&expires_in=86400&user_id=8492&state=123456"
//->
//[
//access_token: 533bacf01e11f55b536a565b57531ad114461ae8736d6506a3,
//expires_in: 86400
//user_id: 8492
//]

//func convert(url: String) -> [String: String] {
//    return url
//        .components(separatedBy: ["&", "#"])
//        .filter{$0.contains("=")}
//        .reduce([:] as [String: String]){ prev, item in
//            var newArr = item.components(separatedBy: "=")
//            var newDict: [String: String] = prev
//            newDict.updateValue(newArr[1], forKey: newArr[0])
//            return newDict
//        }
//}
//
//print(convert(url: "https://oauth.vk.com/blank.html#access_token=533bacf01e11f55b536a565b57531ad114461ae8736d6506a3&expires_in=86400&user_id=8492&state=123456"))

// ============================================================= //
//2. Шопинг в Нью-Йорке. Сколько потратил есть словарь покупок и цен и налог 10% (Dictionary -> Double)
//["socks":5, "shoes":60, "sweater":30] -> 95 * 1.1 = 104.5

//func totalPrice(check: Dictionary<String, Int>) -> Double {
//    return check.reduce(0){$0 + Double($1.value) * 1.1}
//}
//
//print(totalPrice(check: ["socks":5, "shoes":60, "sweater":30]))

// ============================================================= //
//3. Найти максимальное и минимальное число в массиве и вывести в кортеже (Array -> Tuple)
//[101, 5, 77, 505, 404] -> (5, 505)

//func minMax(_ array: [Int]) -> (Int, Int) {
//    return array.reduce(into: (0,0)){prev, num in
//        if (prev == (0,0)) { prev = (num, num) }
//        if (prev.0 > num) { prev.0 = num }
//        if (prev.1 < num ) { prev.1 = num }
//    }
//}
//
//print(minMax([101, 5, 77, 505, 404]))

// ============================================================= //
//4. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже (Array -> Tuple)
//[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)

//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//    return array.reduce(into: (0,0)){prev, num in
//        if (num >= 0) {
//            prev.0 += 1
//        } else {
//            prev.1 += num
//        }
//    }
//}
//
//print(countOfPositivesSumOfNegatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]))

// ============================================================= //
//5. Каждый элемент поделить на порядок в массиве и суммировать (Array -> Int)
//[3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7

//func add(array: [Int]) -> Int {
//    return array
//        .enumerated()
//        .reduce(0) {prev, item in prev + (item.element / (item.offset + 1))}
//}
//
//print(add(array: [3,4,6]))
// ============================================================= //
//6. Посчитать количество nil в значениях словаря (Dictionary -> Int)
//[2: [nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3, nil]] -> 3

//func searchnils(dict: [Int: Array<Int?>]) -> Int? {
//    return dict.reduce(0){prev, dict in prev + dict.value.filter{$0 != nil}.count}
//}
//
//print(
//    searchnils(dict: [2: [nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3, nil]]) ?? 0)

// ============================================================= //
//7. Написать функцию которая принимает строку и на выходе возвращает количество вхождений символов в строке (String -> Dictionary)
//"aaabbbcсaa" → [a:5,b:3,c:2]

// тут было два символа сс - русский и англ

//func findContains(_ string: String) -> [Character: Int] {
//    return string.reduce(into: [:] as [Character: Int]){prev, item in
//        if (prev[item] == nil) {
//            prev[item] = 1
//        } else {
//            prev[item]! += 1
//        }
//    }
//}
//
//print(findContains("aaabbbccaa"))

// ============================================================= //
//8. Посчитайте ценность слова (String -> Int)
//
//A, E, I, O, U, L, N, S, T, R – 1 очко;
//D, G – 2 очка;
//B, C, M, P – 3 очка;
//F, H, V, W, Y – 4 очка;
//K – 5 очков;
//J, X – 8 очков;
//Q, Z – 10 очков.
//
//APPLE = 1 + 3 + 3 + 1 + 1 = 9

//func score(_ string: String) -> Int {
//    let letterDict: [String: Int] = [
//            "A": 1, "E": 1, "I": 1, "O": 1, "U": 1, "L": 1, "N": 1, "S": 1, "T": 1, "R": 1,
//            "D": 2, "G": 2,
//            "B": 3, "C": 3, "M": 3, "P": 3,
//            "F": 4, "H": 4, "V": 4, "W": 4, "Y": 4,
//            "K": 5,
//            "J": 8, "X": 8,
//            "Q": 10, "Z": 10
//        ]
//    return string.reduce(0){prev, letter in
//        prev + (letterDict[String(letter)] ?? 0)
//    }
//}
//
//print(score("APPLE"))

// ============================================================= //
//9. Найти у словаря -> минимальное и максимальное значение
//["a": 1, "b": 2, "c": 3, "d": 4, "e": 5] -> (1, 5)

//func findminMaxValues(_ dict: Dictionary<String, Int>) -> (Int, Int) {
//    return dict.reduce(into: (0,0) as (Int, Int)){prev, item in
//        if (prev == (0,0)) {
//            prev = (item.value, item.value)
//        } else if (prev.0 > item.value) {
//            prev.0 = item.value
//        } else if (prev.1 < item.value) {
//            prev.1 = item.value
//        }
//    }
//}
//
//print(findminMaxValues(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))
// ============================================================= //
//10. Разбить строку на N строк
//"abcdef", 2 -> ["abc", "def"]

//func splitNCases(_ string: String, n: Int) -> [String] {
//
//}
//
//print(splitNCases("abcdef", n: 2))
//print(splitNCases("abcdefg", n: 3))
