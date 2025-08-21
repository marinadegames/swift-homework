//: [Previous](@previous)

import Foundation

// ================================================================ //
//1. Шопинг в Нью-Йорке. Сколько потратил есть словарь покупок и цен и налог 10%
//{"socks":5, "shoes":60, "sweater":30} -> 95 * 1.1 = 104.5

//func totalPrice(_ dict: Dictionary<String, Int>) -> Double {
//    let TAX_PERCENT: Double = 1.1
//    var count: Double = 0
//    
//    for item in dict.values {
//        count += Double(item)
//    }
//    
//    return count * TAX_PERCENT
//}
//
//print(totalPrice(["socks":5, "shoes":60, "sweater":30]))

// ================================================================ //

//2. Написать функцию которая принимает строку и на выходе возвращает количество вхождений символов в строке
//"aaabbbccaa" → [a:5,b:3,c:2]
//"aaabbbccaaxyz" -> "a3b3c2a2xyz"

//func findContains(_ string: String) -> [Character: Int] {
//    var emptyDict : [Character: Int] = [:]
//    
//    for item in Array(string) {
//        emptyDict[item, default: 0] += 1
//    }
//    
//    return emptyDict
//}
//
//print(findContains("aaabbbccaa"))
//print(findContains("aaabbbccaaxyz"))

// ================================================================ //

//3. Дан массив - создать из него словарь в котором ключи элементы массива
//а значения - элементы возведенные в куб
//[1, 2, 3, 4, 5] -> [1: 1, 2: 8, 3: 27, 4: 64, 5: 125]

//func cubication(_ array: [Int]) -> [Int: Int] {
//    var dict: [Int: Int] = [:]
//    
//    for item in array {
//        dict[item, default: 0] = Int(pow(Double(item), 3))
//    }
//    
//    return dict
//}
//
//print(cubication([1, 2, 3, 4, 5]))


// ================================================================ //
//4. Найти два максимальных значения у словаря
// ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5] -> (5, 4)

//func findTwoMaxValues(_ dict: [String: Int]) -> (Int, Int) {
//
//    var firstValue = dict.values.max() ?? 0
//    var secondValue = dict.values.filter{$0 != firstValue}.max() ?? 0
//
//    return (firstValue, secondValue)
//}
//
//print(findTwoMaxValues(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))

// ================================================================ //
//5. Сконвертировать массив словарей в массив кортежей
//[[1: 10], [2: 20], [1: 30], [2: 40]] -> [(1: 10), (2, 20), (1: 30), (2: 40)]

//func convertToListOfTuples(_ array: [[Int: Int]]) -> [(Int, Int)] {
//    // 1 variant
////    var result: [(Int, Int)] = []
////    for arrDict in array {
////        var tupe = (arrDict.keys.first ?? 0, arrDict.values.first ?? 0)
////        result.append(tupe)
////    }
//// return result
//    
//    // 2 variant
//    return array.map {($0.keys.first ?? 0, $0.values.first ?? 0)}
//}
//
//print(convertToListOfTuples([[1: 10], [2: 20], [1: 30], [2: 40]]))

// ================================================================ //
//6. Есть словарь нужно получить key по значению
//["a": 101, "b": 102, "c": 103] и 101 -> "c"

//func keyByValue(value: Int, dict: [String: Int]) -> String {
//    if let cheapestPizza = dict.first(where: { $0.value == value}) {
//        return cheapestPizza.key
//    } else {
//        fatalError("Dictionary doesn't have value \(value)!")
//    }
//}
//
//print(keyByValue(value: 101, dict: ["a": 101, "b": 102, "c": 103]))
//print(keyByValue(value: 103, dict: ["a": 101, "b": 102, "c": 103]))
//print(keyByValue(value: 99, dict: ["a": 101, "b": 102, "c": 103]))
// ================================================================ //
//7. Найти у словаря -> минимальное и максимальное значение
//["a": 1, "b": 2, "c": 3, "d": 4, "e": 5] -> (1, 5)

//func findminMaxValues(_ dict: Dictionary<String, Int>) -> (Int, Int) {
//    return ( dict.values.min() ?? 0, dict.values.max() ?? 0)
//}
//
//print(findminMaxValues(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))

// ================================================================ //

//7. Проверить является ли слово анаграмом второго слова (анаграмма - перестановка букв)
//"foefet", "toffee" -> true
//"Buckethead", "DeathCubeK" -> true


// 1
//func isAnagram(lhs: String, rhs: String) -> Bool {
//    var sortedLhs = lhs.compactMap{String($0).lowercased()}.sorted().joined()
//    var sortedRhs = rhs.compactMap{String($0).lowercased()}.sorted().joined()
//    print(sortedLhs, sortedRhs)
//    return sortedLhs == sortedRhs
//}

// ================================================================ //
//8. Соединить два массива в один словарь
////["a", "b", "c", "d"] [1, 2, 3] -> ["a": 1, "b": 2, "c": 3, "d": nil]
//
//func createDictionary(keys: [String], values: [Int]) -> [String: Int?] {
//    var dict: [String: Int?] = [:]
//    
//    
//       for (index, key) in keys.enumerated() {
//           dict[key] = index < values.count ? values[index] : nil
//       }
//
//    return dict
//}
//
//// ПОЧЕМУ ВЫВОДИТ OPTIONAL???
//print(createDictionary(keys: ["a", "b", "c", "d"], values: [1, 2, 3]))
//

// ================================================================ //
//9. Посчитать количество nil в значениях словаря
//[2: [nil, nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3]] -> 4

//func searchnils(dict: [Int: Array<Int?>]) -> Int? {
//    var counter = 0
//    
//    for arr in dict.values {
//        for item in arr {
//            if (item == nil) { counter += 1 }
//        }
//    }
//    
//    return counter
//}
//
//print(searchnils(dict: [2: [nil, nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3]]) ?? 0)
// ================================================================ //
//10. На входе словарь [String: Int] на выходе перевернутый словарь [Int: String]
//["a" : 6, "b" : 1, "d" : 7, "e" : 4, "i" : 3, "l" : 2] ->
//[ 6: "a", 1: "b",  7: "d", 4: "e",  3: "i",  2: "l"]

//func swapDictinaries(_ dict: [String: Int]) ->  [Int: String] {
//    var newDict: [Int: String] = [:]
//    
//    for (key, value) in dict {
//        newDict.updateValue(String(key), forKey: value)
//    }
//    
//    return newDict
//}
//print(swapDictinaries(["a" : 6, "b" : 1, "d" : 7, "e" : 4, "i" : 3, "l" : 2]))

// ================================================================ //
//11. На входе число нужно раскрыть слово
//
//"a" : 6
//"b" : 1
//"d" : 7
//"e" : 4
//"i" : 3
//"l" : 2
//"m" : 9
//"n" : 8
//"o" : 0
//"t" : 5

//49632 -> "email"
//7415 -> "debt"
//637 -> "aid"

//func translateNumber(_ number: Int) -> String {
//    let parseDict =
//    ["a":6, "b":1, "d":7, "e":4, "i":3, "l":2, "m":9, "n":8, "o":0, "t":5]
//    
//     1 вариант
//    
//        var result: [String] = []
//    
//        for item in String(number) {
//            let searchValue = parseDict.first(where: {$0.value == Int(String(item))})
//            result.append(searchValue?.key ?? "")
//        }
//    //
//        return result.joined()
//}
//
//print(translateNumber(49632))
//print(translateNumber(7415))
//print(translateNumber(637))

// ================================================================ //
//12. Смержить 2 словаря в один
//["A": 1, "B": 2] и ["A": 3] -> ["A": [1, 3], "B": [2]]

//func merge(lhs: [String: Int], rhs: [String: Int]) -> [String: [Int]] {
//    var newDict: [String: [Int]] = [:]
//    
//    for (key, value) in lhs {
//        newDict[key] = [value]
//    }
//    
//    for (key, value) in rhs {
//        if newDict[key] != nil {
//            newDict[key]?.append(value)
//        } else {
//            newDict[key] = [value]
//        }
//    }
//    
//    return newDict
//}
//
//print(merge(lhs: ["A": 1, "B": 2], rhs: ["A": 3]))

// ================================================================ //
//13. Свитчнуть словарь, переставить местами ключи и значения словаря
//["Ice": "Cream", "Age": "21", "Light": "Cream", "Double": "Cream"] ->
//["Cream": ["Ice", "Double", "Light"], "21": ["Age"]]

//func switchDictionary(_ dict: [String: String]) -> [String: [String]] {
//    var newDict:[String: [String]] = [:]
//
//    
//    for (key, value) in dict {
//        if (newDict[value] == nil){
//            var newArr = [key]
//            newDict.updateValue(newArr, forKey: value)
//        } else {
//            newDict[value]?.append(key)
//        }
//    }
//    
//    return newDict
//}
//
//print(switchDictionary(["Ice": "Cream", "Age": "21", "Light": "Cream", "Double": "Cream"]))
// ================================================================ //
//14. Конвертнуть массив объектов в словарь
//[["Grae Drake", "98110"], ["Bethany Kok"], ["Alex Nussbacher", "94101"], ["Darrell Silver", "11201"]] ->
//
//[
//    "Grae Drake": "98110",
//    "Bethany Kok": nil,
//    "Alex Nussbacher": "94101",
//    "Darrell Silver": "11201",
//]
//
//func userContacts(_ list: [[String]]) -> [String: String?] {
//    var newDict: [String: String?] = [:]
//    
//    for arr in list {
//        let firstItem: String = arr[0]
//        var secondItem: String? = arr.count > 1 ? arr[1] : nil
//        newDict.updateValue(secondItem, forKey: firstItem)
//    }
//    
//    return newDict
//}
////
//print(userContacts([["Grae Drake", "98110"], ["Bethany Kok"], ["Alex Nussbacher", "94101"], ["Darrell Silver", "11201"]]))

// ================================================================ //
//15. На входе карта на выходе
//"1♣" -> "clubs"
//"2♦" -> "diamonds"
//"3♥" -> "hearts"
//"4♠" -> "spades"

//func defineSuit(card: String) -> String {
//    let cardDict: [String : String] = [
//        "1♣": "clubs",
//        "2♦": "diamonds",
//        "3♥": "hearts",
//        "4♠": "spades",
//    ];
//    
//    return cardDict[card] ?? "The card was not found."
//}
//
//print(defineSuit(card: "1♣" ))
//print(defineSuit(card: "2♦"))
//print(defineSuit(card: "3♥"))
//print(defineSuit(card: "4♠"))

// ================================================================ //
//16. Вытащить символы которые повторяются в строке больше всех раз, может быть
//"tomatto" -> ["t"]
//"sarsaparilla" -> ["a"]
//["abcdefab"] -> ["a", "b"]

//
//func appersMode(string: String) -> [String] {
//    var newDict: [String: Int] = [:]
//    var arrStr = Array(string)
//    var result: [String] = []
//    
//    for item in Array(string) {
//        newDict[String(item), default: 0] += 1
//    }
//    
//    var maxItem = newDict.max(by: {$0.value < $1.value})
//    
//    for (key, value) in newDict {
//        if (value == maxItem?.value) {
//            result.append(key)
//        }
//    }
//    
//    return result
//}
//
//print(appersMode(string: "tomatto"))
//print(appersMode(string: "sarsaparilla"))
//print(appersMode(string: "abcdefab"))
// ================================================================ //
//17. Отсортировать элементы в словаре чтобы value изменялось от большего к меньшему
//[3:1, 2:2, 1:3] -> [(1,3), (2,2), (3,1)]
//[1:2, 2:4, 3:6] -> [(3,6), (2,4), (1,2)]

//func sortDict(_ dict: [Int: Int]) -> [(Int, Int)] {
//   return dict.sorted(by: {$0.value > $1.value})
//}
//
//print(sortDict([3:1, 2:2, 1:3]))
//print(sortDict([1:2, 2:4, 3:6]))

// ================================================================ //
//18. Посчитайте ценность слова
//A, E, I, O, U, L, N, S, T, R – 1 очко;
//D, G – 2 очка;
//B, C, M, P – 3 очка;
//F, H, V, W, Y – 4 очка;
//K – 5 очков;
//J, X – 8 очков;
//Q, Z – 10 очков.

//APPLE = 1 + 3 + 3 + 1 + 1 = 9

//func score(_ string: String) -> Int {
//    let letterDict: [String: Int] = [
//        "A": 1, "E": 1, "I": 1, "O": 1, "U": 1, "L": 1, "N": 1, "S": 1, "T": 1, "R": 1,
//        "D": 2, "G": 2,
//        "B": 3, "C": 3, "M": 3, "P": 3,
//        "F": 4, "H": 4, "V": 4, "W": 4, "Y": 4,
//        "K": 5,
//        "J": 8, "X": 8,
//        "Q": 10, "Z": 10
//    ]
//
//    var result = 0
//    var strArr = Array(string).compactMap{String($0)}
//    
//    for letter in strArr {
//        result += letterDict[letter] ?? 0
//    }
//    
//    return result
//}
//
//print(score("APPLE"))

// ================================================================ //
//19. Посчитать количество пар
//(Усложненный вариант - решить за O(n))
//[0, 0, 0, 1, 1, 1, 1, 2, 2, 2] -> 4
//[1, 1, 1, 2, 2, 2] -> 2

//func countCouples(array: [Int]) -> Int {
//    var newDict: [Int: Int] = [:]
//    var counter = 0
//    
//    for item in array {
//        newDict[item, default: 0] += 1
//        
//        if ((newDict[item, default: 0]) % 2 == 0){
//            counter += 1
//        }
//    }
//
//    return counter
//}
//
//print(countCouples(array: [0, 0, 0, 1, 1, 1, 1, 2, 2, 2]))
//print(countCouples(array: [1, 1, 1, 2, 2, 2]))

// ================================================================ //
//20. Превратить строку в словарь
//["token", "12345", "user_id", "45678", "expire_in": "7980554012"] ->
//[token: 12345", user_id: 45678, expire_in: 7980554012]

//func arrayToDict(_ array: [String]) -> [String: String] {
//    var newDict: [String: String] = [:]
//    var index: Int = 0
//    
//    while index < array.count {
//        newDict.updateValue(array[index + 1], forKey: array[index])
//        index += 2
//    }
//    
//    return newDict
//}
//
//print(arrayToDict(["token", "12345", "user_id", "45678", "expire_in", "7980554012"]))

// ================================================================ //
//21. Конвертнуть строку с данными в словарь
//"https:api.vk.com/authorize#token=12345&user_id=45678&expire_in=7890554012" ->
//[token: 12345", user_id: 45678, expire_in: 7980554012]

//func convert(url: String) -> [String: Int] {
//    var arr = url.components(separatedBy: ["&", "#"]).filter{$0.contains("=")}
//    var newDict: [String: Int] = [:]
//    
//    for item in arr {
//        var newArr = item.components(separatedBy: "=");
//        newDict.updateValue(Int(newArr[1]) ?? 0, forKey: newArr[0])
//    }
// 
//    
//    return newDict
//}
//
//print(convert(url: "https:api.vk.com/authorize#token=12345&user_id=45678&expire_in=7890554012"))

// ================================================================ //

//22. Определить является ли слово изограммой (isogram) -
//слово в котором нет повторяющихся букв, последовательных или непоследовательных
//"Dermatoglyphics" -> true
//"moose" -> false
//"aba" -> false
//
//func isIsogramm(_ string: String) -> Bool {
//    var newDict: [String: Int] = [:]
//    var strArr = Array(string)
//    
//    for item in Array(string) {
//        newDict[String(item), default: 0] += 1
//    }
//    
//    if newDict.contains(where: {$1 > 1}) {
//        return false
//    }
//    
//    return true
//}
//
//print(isIsogramm("Dermatoglyphics"))
//print(isIsogramm("moose"))
//print(isIsogramm("aba"))


// ================================================================ //

//23. Скомбинировать словари в один
//A = [ "a": 10, "b": 20, "c": 30 ]
//B = [ "a": 3, "c": 6, "d": 3 ]
//[A + B] -> [ "a": 13, "b": 20, "c": 36, "d": 3 ]

//func combine(array: [Dictionary<String, Int>]) -> Dictionary<String, Int> {
//    var newDict: [String: Int] = [:]
//    
//    for currDict in array {
//        for (key, value) in currDict {
//            newDict.updateValue(value, forKey: key)
//        }
//    }
//    
//    return newDict
//}
//
//print(combine(array: [[ "a": 10, "b": 20, "c": 30 ], [ "a": 3, "c": 6, "d": 3 ]]))

// ================================================================ //
//24. Сгруппируем массив в словарь по четным и нечетным числам
//[1, 2, 3, 4, 5, 6] -> [evens: [2, 4, 6], odds: [1, 3, 5]]

//func groupByEvensAndOdds(arr: [Int]) -> [String: [Int]] {
//    var newDict: [String: [Int]] = ["evens": [], "odds": []]
//    
//    for item in arr {
//        newDict[item % 2 == 0 ? "evens" : "odds"]?.append(item)
//    }
//    
//    return newDict
//}
//
//print(groupByEvensAndOdds(arr: [1, 2, 3, 4, 5, 6]))
// ================================================================ //
//25. Турист может нести N кг вещей, нужно уложить в рюкзак от наиболее тяжелых с самым легким которые поместятся в рюкзак
//10 кг -> [палатка, cпальный мешок, удочка, термос, салфетки, жвачка]

let things: [String: Int] = [
    "зажигалка": 20,
    "компас": 100,
    "фрукты": 500,
    "рубашка": 300,
    "термос": 1000,
    "аптечка": 200,
    "куртка": 600,
    "бинокль": 400,
    "удочка": 1200,
    "салфетки": 40,
    "бутерброды": 820,
    "палатка": 5500,
    "спальный мешок": 2250,
    "жвачка": 10
]

//func choiceThings(weight: Int, things: [String: Int]) -> [String] {
//    var sortedArr = things.sorted(by: {$0.value > $1.value})
//    var maxMass = weight
//    var result: [String] = []
//    
//    // проверка на самый тяжелый предмет, сможет ли его нести турист
//    if (sortedArr[0].value > maxMass) {
//        return ["ТУРИСТ НЕ МОЖЕТ ЧТО-ЛИБО НЕСТИ"]
//    }
//    
//    for item in sortedArr {
//        if (maxMass - item.value >= 0) {
//            maxMass -= item.value
//            result.append(item.key)
//        }
//    }
//    
//    return result
//}
//
//print(choiceThings(weight: 10000, things: things))
//print(choiceThings(weight: 6000, things: things))
//print(choiceThings(weight: 5000, things: things))
//print(choiceThings(weight: 5500, things: things))


// ================================================================ //
//26. В словаре хранятся данные студентов нужно вывести чтобы все адреса были в алфавитном порядке в формате имя_пользователя@домен

//let emails: [String: [String]] = [
//    "mgu.edu": ["andrei_serov", "alexander_pushkin", "elena_belova", "kirill_stepanov"],
//    "gmail.com": ["alena.semyonova", "ivan.polekhin", "marina_abrabova"],
//    "msu.edu": ["sergei.zharkov", "julia_lyubimova", "vitaliy.smirnoff"],
//    "yandex.ru": ["ekaterina_ivanova", "glebova_nastya"],
//    "harvard.edu": ["john.doe", "mark.zuckerberg", "helen_hunt"],
//    "mail.ru": ["roman.kolosov", "ilya_gromov", "masha.yashkina"]
//]

//func sortEmails(emails: [String: [String]]) -> [String] {
//    var newArr: [String] = []
//    
//    for (key, arr) in emails {
//        for item in arr {
//            newArr.append("\(item)@\(key)")
//        }
//    }
//    
//    return newArr
//}

//print(sortEmails(emails: emails))

// ================================================================ //
//27. Выведете самое менше повторяющееся слово
//["hi", "hi", "hello"] -> hi

//func littleWord(arr: [String]) -> String {
//    return arr.sorted(by: {$0.count > $1.count}).last ?? "ERROR"
//}
//
//print(littleWord(arr: ["hi", "hi", "hello"] ))
// ================================================================ //

// OTHER EXAMPLES
// ================================================================ //
//func majorityElement(_ nums: [Int]) -> Int {
//        var dict: [Int: Int] = [:]
//        let halfCount = nums.count / 2
//    
//       for item in nums {
//           dict[item, default: 0] += 1
//        
//           if dict[item, default: 0] > halfCount  {
//               return item
//           }
//       }
//    
//    return 0
//   }
//
//print(majorityElement([3,2,3]))
//print(majorityElement([2,2,1,1,1,2,2]))
// ================================================================ //

//func findErrorNums(_ nums: [Int]) -> [Int] {
//    var dict : [Int: Int] = [:]
//    var duplicate: Int = 0
//    
//    for item in nums {
//        dict[item, default: 0] += 1
//    }
//
//    for (key, value) in dict {
//        if (value > 1) {
//            duplicate = key
//        }
//    }
//    
//    let keys = dict.keys.sorted()
//    let sum1 = keys.reduce(0, +)
//    let sum2 = Array(keys[0]...keys[keys.count - 1]).reduce(0, +)
//    let miss = sum2 - sum1 == 0 ? keys[keys.count - 1] + 1 : sum2 - sum1
//    
//    return [duplicate, miss]
//}
//
//print(findErrorNums([1,2,2,4]))
//print(findErrorNums([1,1]))

// ================================================================ //
//words = ["cat","bt","hat","tree"], chars = "atach"
func countCharacters(_ words: [String], _ chars: String) -> Int {
    var charsDict: [Character: Int] = [:]
    var count = 0
    for char in chars {
        charsDict[char, default: 0] += 1
    }
    
    let copyCharsDict = charsDict
    
    for word in words where word.count < chars.count {
        var wordDict: [Character: Int] = [:]
        
        for char in word {
            wordDict[char, default: 0] += 1
        }
  
        func isContains(_ charsDict: [Character: Int], _ wordDict: [Character: Int]) -> Bool {
            var charsDict = charsDict
            
            for (key, value) in wordDict {
                charsDict[key, default: 0] -= value
                
                if charsDict[key, default: 0] < 0 {
                    return false
                }
            }
            return true
            
        }
        
        let check = isContains(charsDict, wordDict)
        
        if check {
            count += word.count
        }
    }
    
    return count
}

print(countCharacters(["cat","bt","hat","tree"], "atach"))
print(countCharacters(["hello","world","leetcode"], "welldonehoneyr"))
print(countCharacters(["dyiclysmffuhibgfvapygkorkqllqlvokosagyelotobicwcmebnpznjbirzrzsrtzjxhsfpiwyfhzyonmuabtlwin","ndqeyhhcquplmznwslewjzuyfgklssvkqxmqjpwhrshycmvrb","ulrrbpspyudncdlbkxkrqpivfftrggemkpyjl","boygirdlggnh","xmqohbyqwagkjzpyawsydmdaattthmuvjbzwpyopyafphx","nulvimegcsiwvhwuiyednoxpugfeimnnyeoczuzxgxbqjvegcxeqnjbwnbvowastqhojepisusvsidhqmszbrnynkyop","hiefuovybkpgzygprmndrkyspoiyapdwkxebgsmodhzpx","juldqdzeskpffaoqcyyxiqqowsalqumddcufhouhrskozhlmobiwzxnhdkidr","lnnvsdcrvzfmrvurucrzlfyigcycffpiuoo","oxgaskztzroxuntiwlfyufddl","tfspedteabxatkaypitjfkhkkigdwdkctqbczcugripkgcyfezpuklfqfcsccboarbfbjfrkxp","qnagrpfzlyrouolqquytwnwnsqnmuzphne","eeilfdaookieawrrbvtnqfzcricvhpiv","sisvsjzyrbdsjcwwygdnxcjhzhsxhpceqz","yhouqhjevqxtecomahbwoptzlkyvjexhzcbccusbjjdgcfzlkoqwiwue","hwxxighzvceaplsycajkhynkhzkwkouszwaiuzqcleyflqrxgjsvlegvupzqijbornbfwpefhxekgpuvgiyeudhncv","cpwcjwgbcquirnsazumgjjcltitmeyfaudbnbqhflvecjsupjmgwfbjo","teyygdmmyadppuopvqdodaczob","qaeowuwqsqffvibrtxnjnzvzuuonrkwpysyxvkijemmpdmtnqxwekbpfzs","qqxpxpmemkldghbmbyxpkwgkaykaerhmwwjonrhcsubchs"], "usdruypficfbpfbivlrhutcgvyjenlxzeovdyjtgvvfdjzcmikjraspdfp"))
// ================================================================ //
// ================================================================ //

