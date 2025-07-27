import Foundation

//1. Функция принимает число и символ и возвращает строку
//
//6, "I"     -> "IIIIII"
//5, "Hello" -> "HelloHelloHelloHelloHello"

func repeatChar(_ count: Int, word: String) -> String {
    var result = Array(repeating: word, count: count).joined()
    return " "
}

// ====================================================== //
//3. Удалить пустые символы из строкик
//"8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
//"8aaaaa dddd r     " -> "8aaaaaddddr"
//
//func removeSpaces(string: String) -> String {
//    var newArr = Array(string)
//    var result: String = ""
//    var index = 0
//    
//    while index <= newArr.count - 1 {
//        var currentItem = String(newArr[index])
//        
//        if (currentItem != " ") {
//            result = result + currentItem
//        }
//        index += 1
//    }
//    
//    return String(result)
//}
//
//
//print(removeSpaces(string: "8 j 8   mBliB8g  imjB8B8  jl  B"))
//print(removeSpaces(string: "8aaaaa dddd r     "))

// ====================================================== //

//4. Вывести количество символов самого маленького слова в предложении
//"Let's travel abroad shall we" → 2

//func countMinWord(_ string: String) -> Int {
//    return string.components(separatedBy: " ").min{$0 > $1}?.count ?? 0
//}
//
//print(countMinWord("Let's travel abroad shall we" )) // 2
//print(countMinWord("Alpha Bravo Tango Omega" )) // 5
//print(countMinWord("a bb ccc" )) // 1
//print(countMinWord("" )) // 0


// ====================================================== //

////5. Проверить что character является или цифрой или буквой
////"0" -> true
////"a" -> true
////" " -> false
////"!" - > false
////"," -> false
//
//func isNumberOrLetter(char: Character) -> Bool {
//    return char.isLetter || char.isNumber ? true : false
//}
//
//print(isNumberOrLetter(char: "0")) // true
//print(isNumberOrLetter(char: "a")) // true
//print(isNumberOrLetter(char: " ")) // false
//print(isNumberOrLetter(char: "!")) // false
//print(isNumberOrLetter(char: ",")) // false

// ====================================================== //
//6. Проверить сколько слов из массива содержат префикс
//["abc","abcabc","cbacba","bca"], "abc" -> 2

//func prefixCount(_ words: [String], _ pref: String) -> Int {
//    
//    var index = 0
//    var prefixCount = 0
//    
//    while index < words.count - 1 {
//        if (words[index].prefix(pref.count) == pref){
//            prefixCount += 1
//        }
//        index += 1
//    }
//    
//    return prefixCount
//    
//}
//
//print(prefixCount(["abc","abcabc","cbacba","bca"], "abc")) // 2

// ====================================================== //
//7. Найти заглавные буквы в строке и вернуть как массив индексов
//"AppLE" -> [0,3,4]

//func findCapitals(_ string: String) -> [Int] {
//    var newArr = Array(string)
//    var result: [Int] = []
//    var index: Int = 0
//    
//    while index < newArr.count {
//        if (newArr[index].isUppercase) {
//            result.append(index)
//        }
//        index += 1
//    }
//    
//    return result
//}
//
//print(findCapitals("AppLE")) // [0,3,4]

// ====================================================== //
//8. Проверить что подстрока находится в конце строке
//"abc", "bc" ->  true
//"abc", "d" ->  false

//func stringEnds(_ string: String, end: String) -> Bool {
//    return string.suffix(end.count) == end
//}
//
//print(stringEnds("abc", end: "bc")) // true
//print(stringEnds("abc", end: "d")) // false

// ====================================================== //

//9. Подсчитать количество гласных (a, e, i, o, u) в строке
//"abracadabra" -> 5
//"pear tree" -> 4

//func countVowels(_ str: String) -> Int {
//    let vowelLetters: [Character] = ["a", "e", "i", "o", "u"]
//    var newArr = Array(str)
//    var index: Int = 0
//    var vowelLettersCount: Int = 0
//    
//    while index < newArr.count {
//        if (vowelLetters.contains(newArr[index])) {
//            vowelLettersCount += 1
//        }
//        index += 1
//    }
//    
//    return vowelLettersCount
//}
//
//print(countVowels("abracadabra")) // 5
//print(countVowels("pear tree")) // 4
// ====================================================== //
//10. Сделать маску для номера кредитной карты чтобы отображались только последние 4 цифры
//"4556364607935616" -> "************5616"
//"4556364" -> "***6364"
//"4556" -> "4556"
//"45" -> "45"

//func maskify(string: String) -> String {
//    let MAX_NUMBERS = 4
//    
//    if (string.count <= MAX_NUMBERS) {
//        return string
//    }
//    
//    var lastLetters = Array(string.suffix(MAX_NUMBERS))
//    var index = 0
//    
//    while index < lastLetters.count {
//        lastLetters[index] = "*"
//        index += 1
//    }
//    
//    return string.dropLast(MAX_NUMBERS) + String(lastLetters)
//}
//
//print(maskify(string: "4556364607935616"))
//print(maskify(string: "4556364"))
//print(maskify(string: "4556"))
//print(maskify(string: "45"))


// ====================================================== //

//11. Написать фукнцию которая проставит тире между нечетными числами
//"454793" -> "4547-9-3"
//
//func insertDash(string: String) -> String {
//    var copyArr = Array(string)
//    var result: [String] = []
//    var index = 0
//    
//    while index < copyArr.count {
//        var currentElement = String(copyArr[index])
//        var nextElement: String = ""
//        
//        if (index + 1 >= copyArr.count) {
//            result.append(currentElement)
//            break
//        } else {
//            nextElement = String(copyArr[index + 1])
//        }
//    
//        if let num = Int(currentElement) {
//            result.append(String(num))
//                          
//            if let nextNum = Int(nextElement) {
//                if (num % 2 != 0 && nextNum % 2 != 0) {
//                    result.append("-")
//                }
//            }
//        }
//        
//        index += 1
//    }
//    
//    return result.joined()
//}
//
//print(insertDash(string: "454793"))

// ====================================================== //
//12. Удалить rotten из слова
//["apple","rottenBanana","apple"] -> ["apple","banana","apple"]

//func removeRotten(array: [String]) -> [String] {
//    var copyArr = array
//    var targetWord = "rotten"
//    var index = 0
//    
//    while index < copyArr.count {
//        var currentItem = copyArr[index]
//        
//        if (currentItem.contains(targetWord)) {
//            if let range = currentItem.range(of: targetWord) {
//                currentItem.removeSubrange(range)
//                copyArr[index] = currentItem.lowercased()
//            }
//           
//        }
//        index += 1
//    }
//    
//    return copyArr
//}
//
//print(removeRotten(array: ["apple","rottenBanana","apple"]))

// ====================================================== //

//13. Найти первый индекс элемента в строке
//
//"Hello", "l" ->  2
//"abcba", "a" -> 0
//"okko", "q" -> -1

//func secondSymbolIndex(word: String, symbol: Character) -> Int {
//    var newArr = Array(word)
//    var index = 0
//    
//    while index < newArr.count {
//        if (newArr[index] == symbol) {
//            return index
//        }
//        index += 1
//    }
//    
//    return -1
//}
//
//print(secondSymbolIndex(word: "Hello", symbol: "l"))
//print(secondSymbolIndex(word:"abcba", symbol: "a"))
//print(secondSymbolIndex(word:"okko", symbol: "q"))

// ====================================================== //
//14. Найти второй индекс элемента в строке
//"Hello", "l" ->  3
//"abcba", "a" -> 4
//"okko", "q" -> -1

//func secondSymbolIndex(word: String, symbol: Character) -> Int {
//    var newArr = Array(word)
//    var counter = 0
//    var index = 0
//    
//    while index < newArr.count {
//        var currentItem = newArr[index]
//        if (currentItem == symbol) {
//            counter += 1
//            if (counter == 2) { return index }
//        }
//        index += 1
//    }
//    return -1
//}
//
//print(secondSymbolIndex(word: "Hello", symbol: "l")) // 3
//print(secondSymbolIndex(word: "abcba", symbol: "a")) // 4
//print(secondSymbolIndex(word: "okko", symbol: "q")) // -1

// ====================================================== //
//15. Находим максимальный и минимальный элемент в строке, возвращаем в отдельной строке с пробелом
//
//"1 2 3 4 5" -> "5 1"
//"1 9 3 4 -5" -> "9 -5"

//func highAndLow(string: String) -> String {
//    var newArr = string.components(separatedBy: " ").compactMap{Int($0)}
//    
//    return "\(newArr.max() ?? -1) \(newArr.min() ?? -1)"
//}
//
//print(highAndLow(string: "1 2 3 4 5"))
//print(highAndLow(string: "1 9 3 4 -5"))


// ====================================================== //
//16. Написать функцию которая удаляет фрагмент в url-строке, тоесть код после #
//"www.apple.com#about" --> "www.apple.com"
//"www.apple.com?page=1" -->"www.apple.com?page=1"

//func removeUrlAnchor(url: String) -> String {
//    return url.components(separatedBy: "#")[0]
//}
//
//print(removeUrlAnchor(url: "www.apple.com#about"))
//print(removeUrlAnchor(url: "www.apple.com?page=1"))


// ====================================================== //
//17. Реверснуть слова=
//"This is an example!" -> "sihT si na !elpmaxe"
//"double  spaces"      -> "elbuod  secaps"

//func reverseWords(string: String) -> String {
//    var newArr = string.components(separatedBy: " ");
//    var result: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        result.append(String(newArr[index].reversed()))
//        index += 1
//    }
//
//    return result.joined(separator: " ")
//}
//
//print(reverseWords(string: "This is an example!"))
//print(reverseWords(string: "double  spaces"))

// ====================================================== //
////19. Сконвертировать массив строк в массив чисел
////["1", "2", "3"] -> [1, 2, 3]
//
//func toNumberArray(array: [String]) -> [Int] {
//    return array.compactMap{Int($0)}
//}
//
//print(toNumberArray(array: ["1", "2", "3"]))

//// ====================================================== //
//20. Поменять a на b и b на a
//"acb" -> "bca"
//"aabacbaa" -> "bbabcabb"


//func switchAtoB(_ string: String) -> String {
//    var newArr = Array(string)
//    var result: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        var currentItem = newArr[index]
//        result.append(currentItem == "a" ? "b" : "a")
//        index += 1
//    }
//    
//    return result.joined()
//}
//
//print(switchAtoB("acb"))
//print(switchAtoB("aabacbaa"))


// ====================================================== //
//21. Есть два массива строк нужно склеить их
//["a", "b", "c"], ["1", "2", "3"] -> ["a1", "b1", "c1"]

//func merge(lhs: [String], rhs: [String]) -> [String] {
//    var result: [String] = []
//    var index = 0
//    
//    while index < lhs.count {
//        result.append(lhs[index] + rhs[index])
//        index += 1
//    }
//
//    return result
//}
//
//print(merge(lhs: ["a", "b", "c"], rhs: ["1", "2", "3"])) // ["a1", "b2", "c3"]

// ====================================================== //
//22. Отсортировать по последнему символу строки
//
//"man i need a taxi up to ubud" -> ["a", "need", "ubud", "i", "taxi", "man", "to", "up"]
//"what time are we climbing up the volcano" -> ["time", "are", "we", "the", "climbing", "volcano", "up", "what"]

//func sortByLastCharacter(string: String) -> [String] {
//    var result = string.components(separatedBy: " ").sorted{
//        ($0.last ?? " ") < ($1.last ?? " ")
//    }
//    return result
//}
//
//print(sortByLastCharacter(string: "man i need a taxi up to ubud"))
//print(sortByLastCharacter(string: "what time are we climbing up the volcano"))

// ====================================================== //
//23. Повторить число столько раз сколько оно по значению
//"312" -> "333122"
//"102269" -> "12222666666999999999"

//func digitsExplode(string: String) -> String {
//    var newArr = Array(string)
//    print(newArr)
//    var result: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        var newNum = String(newArr[index])
//        var newArr = Array(repeating: newNum, count: Int(newNum) ?? 0)
//        result.append(newArr.joined())
//        index += 1
//    }
//    
//    
//    return result.joined()
//}
//
//print(digitsExplode(string: "312"))
//print(digitsExplode(string: "102269"))

// ====================================================== //
//24. Собрать первые заглавные буквы в строку
//"This Is A Test" -> "TIAT"

//func makeStringofFirstCharacters(phrase: String) -> String {
//    var newArr = phrase.components(separatedBy: " ")
//    var result: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        var newValue = String(newArr[index].first ?? " ")
//        result.append(newValue)
//        index += 1
//    }
//    
//    return result.joined()
//}
//
//print(makeStringofFirstCharacters(phrase: "This Is A Test"))

// ====================================================== //
//25. Вернуть самое длинное слово из строки
//"a b c d e fgh" -> "fgh"
//"one two three" -> "three"
//"red blue grey" -> "grey"

//func logestWord(_ string: String) -> String {
//    var newArr = string.components(separatedBy: " ")
//    var result: String = ""
//    var index = 1
//    
//    while index < newArr.count {
//        var currentItem = newArr[index]
//        var prevItem = newArr[index - 1]
//        
//        if (currentItem.count == prevItem.count) {
//            result = currentItem < prevItem ? prevItem : currentItem
//        } else {
//            result = currentItem
//        }
//        
//        index += 1
//    }
//    
//    return result
//}
//
//print(logestWord("a b c d e fgh"))
//print(logestWord("one two three"))
//print(logestWord("red blue grey")) //  grey

// ====================================================== //

//26 На вход даются две строки и нужно соединить в одну по формуле:
//shorter+reverse(longer)+shorter.
//"first", "abcde" -> "abcdetsrifabcde"
//"hello", "bau" -> "bauollehbau"
//"abcde", "fghi" -> "fghiedcbafghi"

//func concatenateByFormula(lhs: String, rhs: String) -> String {
//    var shorter: String = " "
//    var longer: String = " "
//    
//    if (lhs.count == rhs.count) {
//        (shorter, longer) = lhs < rhs ? (lhs, rhs) : (rhs, lhs)
//    } else {
//        (shorter, longer) = lhs.count < rhs.count ? (lhs, rhs) : (rhs, lhs)
//    }
//    
//    return shorter + String(longer.reversed()) + shorter
//}
//
//print(concatenateByFormula(lhs: "first", rhs: "abcde"))
//print(concatenateByFormula(lhs: "hello", rhs: "bau"))
//print(concatenateByFormula(lhs: "abcde", rhs: "fghi"))

// ====================================================== //
//27 Каждое вхождение слова coverage поменять на covfefe и
// добавить в конец каждой строки covfefe
//"coverage" -> "covfefe"
//"coverage coverage" -> "covfefe covfefe"
//"nothing" -> "nothing covfefe"
//"double space " -> "double space  covfefe"
//"covfefe" -> "covfefe covfefe");
//"erag" -> "erag covfefe"

//func refactCovfefe(_ string: String) -> String {
//    var SEARCH_STRING = "coverage"
//    var ADDITIONAL_STRING = "covfefe"
//    var newArr = string.components(separatedBy: " ")
//    var index = 0
//    
//    print(newArr)
//    
//    while index < newArr.count {
//        if (newArr[index] == SEARCH_STRING) {
//            newArr[index] = ADDITIONAL_STRING
//        }
//        
//        index += 1
//    }
//    
//    return newArr.joined(separator: " ") + " "  + ADDITIONAL_STRING
//}
//
//print(refactCovfefe("coverage"))
//print(refactCovfefe("coverage coverage"))
//print(refactCovfefe("nothing"))
//print(refactCovfefe("double space"))
//print(refactCovfefe("covfefe"))
//print(refactCovfefe("erag"))
// ====================================================== //

//28. Удалять повторяющиеся слова которые идут последовательно
//"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"
//-> "alpha beta gamma delta alpha beta gamma delta"

//func removDuplicates(string: String) -> String {
//    var newArr = string.components(separatedBy: " ")
//    var result: [String] = []
//    var index = 1
//    
//    while index < newArr.count {
//        var currItem = newArr[index]
//        var prevItem = newArr[index - 1]
//        
//        if (currItem != prevItem) {
//            result.append(prevItem)
//        }
//        
//        if (index + 1 == newArr.count) {
//            result.append(currItem)
//        }
//        
//        index += 1
//    }
//    
//    return result.joined(separator: " ")
//}
//
//print(removDuplicates(string: "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"))

// ====================================================== //
//29. Перевенуть строку без использования -  reversed
//"abcdef" -> "fedcba"

//func reverseString(_ string: String) -> String {
//    var newArr = Array(string)
//    var result: [String] = []
//    var index = newArr.count - 1
//    
//    while index >= 0 {
//        result.append(String(newArr[index]))
//        index -= 1
//    }
//    
//    return result.joined()
//}
//
//
//print(reverseString("abcdef"))

// ====================================================== //
//30. Сконвертировать имя в инициалы
//"John Doe" -> "J. D."
//"Artur Lector" -> "A. L."

//func makeInitials(_ name: String) -> String {
//    var newArr = name.components(separatedBy: " ")
//    var result: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        var firstLetter = newArr[index].first?.uppercased() ?? " "
//        result.append(firstLetter + ".")
//        index += 1
//    }
//    
//    return result.joined(separator: " ")
//}
//
//print(makeInitials("John Doe"))
//print(makeInitials("Artur Lector"))

// ====================================================== //
//31. Реверснуть слова без использования - reversed
//"The greatest victory is that which requires no battle"
//-> "battle no requires which that is victory greatest The"

//func reverseWords(_ string: String) -> String {
//    var newArr = string.components(separatedBy: " ").compactMap{String($0)}
//    var result: [String] = []
//    var index = newArr.count - 1
//    
//    while index >= 0 {
//        result.append(newArr[index])
//        index -= 1
//    }
//    
//    return result.joined(separator: " ")
//}
//
//print(reverseWords("The greatest victory is that which requires no battle"))

// ====================================================== //
//32. Написать функцию суммирования строк
//"13",  "37" --> "50"

//func sumElements(lhs: String, rhs: String) -> String {
//    return String((Int(lhs) ?? 0) + (Int(rhs) ?? 0))
//}
//
//print(sumElements(lhs: "13", rhs: "37"))

// ====================================================== //
//33. Вытащить число из строки
//
//"123" -> 123
//"a1b2c3" -> 123
//"aa1bb2cc3dd" -> 123

//func filter(string: String) -> Int {
//    var newArr = Array(string).compactMap{String($0)}
//    var result: [String] = []
//    var index = 0
//    print(newArr)
//
//    while index < newArr.count {
//        
//        if let newValue = Int(newArr[index]) {
//            result.append(newArr[index])
//        }
//        
//        index += 1
//    }
//    
//
//    return Int(result.joined()) ?? 0
//}
//
//print(filter(string: "123"))
//print(filter(string: "a1b2c3"))
//print(filter(string: "aa1bb2cc3dd"))

// ====================================================== //
//34. Проверить что все символы уникальны
//"abcdef" -> true
//"aba" -> false

//func uniqChars(_ str: String) -> Bool {
//    var newArr = Array(str)
//    var indexExternal = 0
//    
//    while indexExternal < newArr.count {
//        var currentItem = newArr[indexExternal]
//        var indexInternal = 0
//        
//        while indexInternal < newArr.count {
//            
//            if (currentItem == newArr[indexInternal]
//                && indexExternal != indexInternal) {
//                return false
//            }
//            
//            indexInternal += 1
//        }
//        
//        indexExternal += 1
//        indexInternal = 0
//    }
//    
//    return true
//}
//
//print(uniqChars("abcdef"))
//print(uniqChars("aba"))

// ====================================================== //
//35. Разделить строку на N различных случаев одинаковой длины
//"Strengthened", 6 -> ["St", "re", "ng", "th", "en", "ed"]
//"Unscrupulous", 2 -> ["Unscru", "pulous"]
//"Flavorless", 1 -> ["Flavorless"]
//
//func splitNCases(_ str: String, _ cases: Int) -> [String] {
//    if (cases == 1) {
//        return [str]
//    }
//    
//    var numSeparate = str.count / cases
//    var newArr = Array(str).compactMap{String($0)}
//    var result: [String] = []
//    var index = 0
//    var currentCount = 0
//    var currentResult: [String] = []
//    
//    while index < newArr.count {
//        
//        currentResult.append(newArr[index])
//        currentCount += 1
//        
//        if (currentCount == numSeparate) {
//            result.append(String(currentResult.joined()))
//            currentResult = []
//            currentCount = 0
//        }
//        
//        index += 1
//    }
//
//    return result
//}
//
//print(splitNCases("Strengthened", 6))
//print(splitNCases("Unscrupulous", 2))
//print(splitNCases("Flavorless", 1))

// ====================================================== //
//36. Проверить что почтовый индекс является валидным
//Пачтовый индекс валидный:
//- Если состоит только из цифр
//- Цифр должно быть 6
//- Не может начинаться с цифр 0, 5, 7, 8 и 9
//
//198328 -> true
//310003 -> true
//056879 -> false
//12A483 -> false
//1@63 -> false

//func checkPostalCode(_ code: String) -> Bool {
//    let SHOULD_NUMBERS = 6
//    if (code.count != SHOULD_NUMBERS) { return false }
//    if Int(code) == nil { return false }
//    
//    let isNotValidFirstNumbers = [0, 5, 7, 8, 9]
//    let firstElement = String(code.prefix(1))
//    var index = 0
//    
//    while index < isNotValidFirstNumbers.count {
//        if (isNotValidFirstNumbers[index] == Int(firstElement)) {
//            return false
//        }
//        index += 1
//    }
//    
//    return true
//}
//
//print(checkPostalCode("198328"))
//print(checkPostalCode("310003"))
//print(checkPostalCode("056879"))
//print(checkPostalCode("12A483"))
//print(checkPostalCode("1@63"))

// ====================================================== //
//37. Проверить что пароль является валидным
//Пароль валидный если
//- минимум 8 символов но не больше 128
//- Есть минимум один символ в верхнем регистре и нижнем регистре
//- Есть как минимум один спец символ - ~ ! ? @ # $ % ^ & * _ - + ( ) [ ] { } > < / \ | " ' . , : ;
//- Есть как минимум одна цифра 0-9
//- Только латинские или кириллические символы

//Abracadabra1* -> true
//Abracadabra1 -> false
//1*AqBc -> false

//func checkPassword(_ password: String) -> Bool {
//    // check max\min count
//    let MIN_PASSW = 8
//    let MAX_PASSW = 128
//    
//    if (password.count < MIN_PASSW || password.count > MAX_PASSW) {
//        return false
//    }
//    
//    // check:
//    // 1. lower\uppercase
//    // 2. spec symbols
//    // 3. has numbers
//    let specSymbols = ["-", "~", "!", "?", "@", "#", "$", "%", "^", "&", "*", "_", "+", "(", ")", "[", "]", "{", "}", ">", "<", "/", "\\", "|", "\"", "'", ".", ",", ":", ";"]
//    var newArr = Array(password)
//    var hasUpperCase = false
//    var hasLowerCase = false
//    var hasNumbers = false
//    var hasSpecSymbol = false
//    var index = 0
//    
//    while index < newArr.count {
//        var currentItem = newArr[index]
//        
//        if let isNumValue = Int(String(currentItem)) {
//            hasNumbers = true
//        } else if (currentItem.isUppercase) {
//            hasUpperCase = true
//        } else if (currentItem.isLowercase) {
//            hasLowerCase = true
//        } else if (specSymbols.contains(String(currentItem))) {
//            hasSpecSymbol = true
//        }
//        
//        index += 1
//    }
//    
//    if (!hasLowerCase || !hasUpperCase || !hasNumbers || !hasSpecSymbol) { return false
//    }
//    
//    return true
//}
//
//print(checkPassword("Abracadabra1*"))
//print(checkPassword("Abracadabra1"))
//print(checkPassword("1*AqBc"))


// ====================================================== //
//38. На входе строка на выходе массив строк с капитализацей четных и нечетных символов
//"abcdef" -> ["AbCdEf", "aBcDeF"]

//func capitalize(_ string: String) -> [String] {
//    let newArr = Array(string).compactMap{String($0)}
//    var evenArr: [String] = []
//    var oddArr: [String] = []
//    var index = 0
//    
//    while index < newArr.count {
//        let currenItem = newArr[index]
//        
//        index % 2 == 0
//        ? evenArr.append(currenItem.uppercased())
//        : evenArr.append(currenItem.lowercased())
//        
//        index % 2 == 0
//        ? oddArr.append(currenItem.lowercased())
//        : oddArr.append(currenItem.uppercased())
//        
//        index += 1
//    }
//    
//    return [evenArr.joined(), oddArr.joined()]
//}
//
//print(capitalize("abcdef"))

// ====================================================== //
