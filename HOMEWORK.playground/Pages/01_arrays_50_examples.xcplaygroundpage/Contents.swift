
import Foundation

// 1. Посчитать сумму положительных чисел в массиве
//[1,-4,7,12] -> 1 + 7 + 12 = 20

//func sumOfPositives(_ array: [Int]) -> Int {
//    var result = 0
//
//    for item in array {
//        if (item >= 0) {
//            result += item
//        }
//    }
//    
//    return result;
//}
//
//print(sumOfPositives([1,-4,7,12])); // 20

// ========================================================= //

// 2. Посчитать произведение элементов в массиве
//[1, 2, 3, 4] -> 1 * 2 * 3 * 4 = 24
//[0, 1, 2, 3, 4] -> 0 * 1 * 2 * 3 * 4 = 0

//var arrayFirst = [1,2,3,4];
//var arraySecond = [0,1,2,3,4];
//
//func multiplyOfElements(_ array: [Int]) -> Int {
//    var result = 1;
//    
//    for item in array {
//        result = result * item
//    }
//    
//    return result;
//}
//
//print(multiplyOfElements(arrayFirst)) // 24
//print(multiplyOfElements(arraySecond)) // 0

// ========================================================= //

// 3. Возвести каждый элементв в квадрат
// [1, 2, 3, 4, 5] -> [1, 4, 9, 16, 25]

//var arr = [1, 2, 3, 4, 5];
//
//func squareElements(_ array: inout [Int]) -> [Int] {
//    var result: [Int] = [];
//    
//    for item in array {
//        result.append(item * item);
//    }
//    
//    return result;
//}
//
//print(squareElements(&arr));

// ========================================================= //

// 4. Посчитать сумму диапазона от 1 до num
// 2 -> 3 (1 + 2)
// 8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
//
//func summation(_ num: Int) -> Int {
//    var result = 0;
//    
//    for item in 1...num {
//        result += item
//    }
//    
//    return result;
//}
//
//print(summation(2)) // 3
//print(summation(8)) // 36

// ========================================================= //

// 5. Возвести каждый элемент массива в куб
// [1, 2, 3] -> [1, 8, 27]

//var arr = [1, 2, 3];
//
//func cube(_ array: Array<Int>) -> Array<Int> {
//    var result: [Int] = [];
//    var THIRD_POWER = 3;
//    
//    for item in array {
//        result.append(Int(pow(Double(item), Double(THIRD_POWER))));
//    }
//    
//    return result;
//    
//}
//
//print(cube(arr)); // [1, 8, 27]

// ========================================================= //

//6. Инвертировать элементы массива
//[1,2,3,4,5] -> [-1,-2,-3,-4,-5]
//[1,-2,3,-4,5] -> [-1,2,-3,4,-5]
//[] -> []

//var arr1 = [1,2,3,4,5]
//var arr2 = [1,-2,3,-4,5]
//var arr3: [Int] = [];
//
//func invert(_ array: [Int]) -> [Int] {
//    if (array.count == 0) {
//        return array;
//    }
//    
//    var result: [Int] = [];
//    
//    for item in array {
//        result.append(item * -1);
//    }
//    
//    return result;
//}
//
//print(invert(arr1)) // [-1, -2, -3, -4, -5]
//print(invert(arr2)) // [-1, 2, -3, 4, -5]
//print(invert(arr3)) // []

// ========================================================= //
// 7. Найти минимальное число в массиве
// [34, 15, 88, 2] -> 2
// [34, -345, -1, 100] -> -345

//func findSmallest(_ array: [Int]) -> Int {
//    return array.min() ?? 0
//}
//
//print(findSmallest([34, 15, 88, 2]))
//print(findSmallest([34, -345, -1, 100]))

// ========================================================= //

// 8. Найти максимальное и минимальное число в массиве и вывести в кортеже
// [101, 5, 77, 505, 404] -> (5, 505)
//var arr = [101, 5, 77, 505, 404];
//
//func minMax(_ array: [Int]) -> (Int, Int) {
//    let minValue = array.min() ?? 0
//    let maxValue = array.max() ?? 0
//    return (minValue, maxValue);
//}
//
//print(minMax(arr)); // (5, 505)

// ========================================================= //
//9. Функция принимает количество и число и возвращает массив повторяющихся чисел
//4, 0 -> [0, 0, 0, 0]
//5, -1 -> [-1, -1, -1, -1, -1]

//func repeatNumber(_ number: Int, count: Int) -> [Int] {
//    return Array(repeating: number, count: count)
//}
//
//print(repeatNumber(0, count: 4)) // [0, 0, 0, 0]
//print(repeatNumber(-1, count: 5)) // [-1, -1, -1, -1, -1]

// ========================================================= //

//10. Сумма всех элементов по модулю
//[-1, 2, -3, 4, -5] → 1 + 2 + 3 + 4 + 5 → 15

//var arr = [-1, 2, -3, 4, -5];
//
//func sumOfAbs(_ array: [Int]) -> Int {
//    // можно и без HOF
//    return array.reduce(0) {abs($0) + abs($1)} //
//}
//
//print(sumOfAbs(arr)); // 15

// ========================================================= //

//11. Подсчитать количество true в массиве
//
//[true,  true,  true,  false,
//  true,  true,  true,  true ,
//  true,  false, true,  false,
//  true,  false, false, true ,
//  true,  true,  true,  true ,
//  false, false, true,  true] -> 17

//var arr = [true,  true,  true,  false, true,  true,  true,  true , true,  false, true,  false, true,  false, false, true , true,  true,  true,  true , false, false, true,  true]
//
//func countTrues(_ array: [Bool]) -> Int {
//    var counter = 0;
//    
//    for item in array {
//        item ? counter += 1 : ()
//    }
//    
//    return counter;
//}
//
//print(countTrues(arr)) // 17

// ========================================================= //

//12. Посчитать сумму от n до m
//1, 2 -> 3 (1 + 2)
//2, 8 -> 35 (2 + 3 + 4 + 5 + 6 + 7 + 8)

//func summation(n: Int, m: Int) -> Int {
//    var result = 0;
//    
//    for i in n...m {
//        result += i
//    }
//    
//    return result;
//}
//
//print(summation(n: 1, m: 2)); // 3
//print(summation(n: 2, m: 8)); // 35

// ========================================================= //

// 13. Подсчитать среднюю оценку в массиве
// [1, 2, 3, 4, 5] → 3

//var arr1 = [1, 2, 3, 4, 5];
//var arr2 = [4,5,23,2,555];
//
//
//
//func average(_ marks: [Int]) -> Int {
//    return marks.reduce(0){$0+$1} / marks.count
//}
//
//print(average(arr1)) // 3
//print(average(arr2)) // 117

// ========================================================= //

//14. Конвертировать число в последовательность из 1 и 0
//4 -> "1010".
//12 -> "101010101010"

//func convert(num: Int) -> String {
//    var result: [Int] = [];
//    
//    for item in 1...num {
//        item % 2 == 0 ? result.append(0) : result.append(1)
//    }
//    
//    return result.map {String($0)}.joined()
//}
//
//print(convert(num: 4)) // 1010
//print(convert(num: 12)) // 101010101010

// ========================================================= //

//15. Посчитать количество пололожительных чисел и сумму отрицательных и вывести в кортеже
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15] → (10, -65)

//var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15];
//
//func countOfPositivesSumOfNegatives(_ array: [Int]) -> (Int, Int) {
//    var positiveNumbers: [Int] = [];
//    var sumOfNegatives = 0;
//    
//    
//    for item in array {
//        if (item >= 0) {
//            positiveNumbers.append(item)
//        } else {
//            sumOfNegatives += item
//        }
//    }
//    
//    return (positiveNumbers.count, sumOfNegatives)
//}
//
//print(countOfPositivesSumOfNegatives(arr)) // (10, -65)

// ========================================================= //

//16. Реализовать функцию возведения в степень
//(3, 2) -> 9 ( = 3 * 3 )
//(2, 3) -> 8 ( = 2 * 2 * 2 )
//(10, 6) -> 1000000
//
//func numberToPower(_ number: Int, _ power: Int) -> Int {
//    return Int(pow(Double(number), Double(power)))
//}
//
//print(numberToPower(3,2)); // 9
//print(numberToPower(2,3)); // 8
//print(numberToPower(10,6)); // 1000000

// ========================================================= //

//17. Почистить массив от нечетных чисел
//[0,1] → [0]
//[0,1,2,3,4,5] → [0,2,4]

//var arr = [0, 1]
//var arr2 = [1,2,3,4,5]
////
//func noOdds(array: [Int]) -> [Int] {
//    var result : [Int] = []
////    
////    for item in array {
////        if (item % 2 == 0) {
////            result.append(item)
////        }
////    }
//    
//    var index = 0
//    
//    while index < array.count {
//        
//        let item = array[index]
//        if item % 2 == 0 {
//            result.append(item)
//        }
//        
//        index += 1
//    }
//    
//    return result
//}
//
//print(noOdds(array: arr)) // [0]
//print(noOdds(array: arr2)) // [2, 4]

//(Усложненный вариант - удаление элементов из массива)
//func noOdds(array: inout [Int]) -> [Int] {
//    for item in (0..<array.count).reversed() {
//        if (array[item] % 2 != 0) {
//            array.remove(at: item)
//        }
//    }
//    
//    return array;
//}
//
//print(noOdds(array: &arr)) // [0]
//print(noOdds(array: &arr2)) // [2, 4]

// ========================================================= //
//18. Найти сумму минимальных значений
//[ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100 ]]
//-> 1 + 5 + 20 = 26

//var arr = [ [ 1, 2, 3, 4, 5 ], [ 5, 6, 7, 8, 9 ], [ 20, 21, 34, 56, 100]]
//
//func sumOfMinimums(_ array: [[Int]]) -> Int {
//    //var maxNumbers: [Int] = [];
//    var sum = 0;
//    
//    for i in array {
//        //maxNumbers.append(i.min() ?? 0)
//        sum += i.min() ?? 0
//    }
//    
//    return sum;
//    
//}
//
//print(sumOfMinimums(arr)) // 26


// ========================================================= //

//19. Массив четной величены, первую половину массива суммировать, вторую половину умножить и вывести в кортеже
//[6, 5, 4, 3, 2, 1] -> (6 + 5 + 4, 3 * 2 * 1) -> (15, 6)

//var arr = [6, 5, 4, 3, 2, 1];
//
//func sumMultiply(_ array: [Int]) -> (Int, Int) {
//    var halfArrayIndex = array.count / 2;
//    var sumResult = 0;
//    var multResult = 1;
//    
//    for (index, item) in array.enumerated() {
//        if (index < halfArrayIndex){
//            sumResult += item
//        } else {
//            multResult *= item
//        }
//    }
//
//    
//    return (sumResult, multResult);
//}
//
//print(sumMultiply(arr)) // (15, 6)

// ========================================================= //

//20. Возвести в квадрат число если не берется корень или взять корень числа  и вернть массив
//[4.0, 3.0, 9.0, 7.0, 2.0, 1.0] -> [2.0, 9.0, 3.0, 49.0, 4.0, 1.0]

//var arr = [4.0, 3.0, 9.0, 7.0, 2.0, 1.0];
//
//func rootOrSquare(_ array: [Double]) -> [Double] {
//    var result: [Double] = [];
//    
//    for item in array {
//        let root = sqrt(item);
//        
//        if (root == floor(root)) {
//            result.append(root)
//        } else {
//            result.append(item * item)
//        }
//    }
//    
//    return result;
//}
//
//print(rootOrSquare(arr)); // [2.0, 9.0, 3.0, 49.0, 4.0, 1.0]

// ========================================================= //

//21. Возвести в квадрат число если не берется корень или взять корень числа  и вернуть массив
//[4,3,9,7,2,1] -> [2,9,3,49,4,1]

//var arr = [4,3,9,7,2,1];
//
//func rootOrSquare(_ array: [Int]) -> [Int] {
//    var result: [Int] = [];
//    
//    
//       for item in array {
//           let root = sqrt(Double(item));
//
//           if (root == floor(root)) {
//               result.append(Int(root))
//           } else {
//               result.append(item * item)
//           }
//       }
//    
//    return result;
//}
//
//print(rootOrSquare(arr)); // [2, 9, 3, 49, 4, 1]


// ========================================================= //

//22. Есть отсортированный массив. Найти индекс числа или
//если нет числа индекс где он должен быть
//target = 7
//[1, 2, 3, 4, 6, 8, 9] -> 5
//[1, 2, 7, 9] -> 2
//
//var arr1 = [1, 2, 3, 4, 6, 8, 9];
//var arr2 = [1, 2, 7, 9];
//
//func findIndex(_ array: [Int], target: Int) -> Int {
//    for (index, item) in array.enumerated() {
//        if (item >= target) {
//            return index;
//        }
//    }
//    
//    return 0;
//}
//
//print(findIndex(arr1, target: 7)); // 5
//print(findIndex(arr2, target: 7)); // 2


// ========================================================= //

//23. Написать функцию которая умножает каждый элемент на индекс
//[1, 2, 3, 4] -> [1 * 0, 2 * 1, 3 * 2, 4 * 3] -> [0, 2, 6, 12]
//
//var arr = [1, 2, 3, 4]
////
//func multiplyIndex(_ array: [Int]) -> [Int] {
//    var result: [Int] = [];
//    
//    for (index, item) in array.enumerated() {
//        result.append(item * index);
//    }
//    
//    return result;
//        
//}
//
//print(multiplyIndex(arr)); // [0, 2, 6, 12]

// ========================================================= //

//24. Написать функцию которая возводит каждый элемент в степень по счету
//[10, 2, 5, 1] -> [10 ^ 1, 2 ^ 2, 5 ^ 3, 1 ^ 4] -> [10, 4, 125, 1]

//var arr = [10, 2, 5, 1];
//
//func multiplyPower(_ array: [Int]) -> [Int] {
//    var result: [Int] = [];
//    var counter = 1;
//    
//    for item in array {
//        result.append(Int(pow(Double(item), Double(counter))));
//        counter += 1;
//    }
//    
//    return result;
//}
//
//print(multiplyPower(arr)); // [10, 4, 125, 1]

// ========================================================= //

//25. Написать функцию которая конвертирует строку в массив Character и добавляет индекс
//"abcd" -> ["a", "b", "c", "d"]

//var str = "abcd";
//
//func convertToArray(_ string: String) -> Array<Character> {
//    return Array(string);
//}
//
//print(convertToArray(str)); // ["a", "b", "c", "d"]

// ========================================================= //

//26. Написать функцию которая конвертирует строку в массив Character и добавляет индекс
//"abcd" -> ["a0", "b1", "c2", "d3"]

//var str = "abcd";
//
//func convertToArray(_ string: String) -> Array<String> {
//    var result: Array<String> = [];
//    
//    for (index, item) in Array(string).enumerated() {
//        result.append(String(item) + String(index));
//    }
//    
//    return result;
//}
//
//print(convertToArray(str)); // ["a0", "b1", "c2", "d3"]
// ========================================================= //

//27. Удалить первый и последний элемент строки
//"place" -> "lac"

//var str = "place";
//
//func removeFirstLast(_ string: String) -> String {
//    var newArr = Array(string);
//    newArr.removeFirst();
//    newArr.removeLast();
//    return String(newArr);
//}
//
//print(removeFirstLast(str)); // lac

// ========================================================= //

//28. Удалить элемент строки по-середине
//"place" -> "plce"

//var str = "place";

//func removeCenter(_ string: String) -> String {
//    var newArr = Array(string);
//    newArr.remove(at: newArr.count/2);
//    return String(newArr);
//}
//
//print(removeCenter(str)); // plce

// ========================================================= //

//29. Суммировать четные числа
//[4, 3, 1, 2, 5, 10, 6, 7, 9, 8]  -> 4 + 2 + 10 + 6 + 8 -> 30

//var arr = [4, 3, 1, 2, 5, 10, 6, 7, 9, 8];
//
//func sumEvenNumbers(array: [Int]) -> Int {
//    var result: Int = 0;
//    
//    for item in array {
//        if (item % 2 == 0) {
//            result = result + item;
//        }
//    }
//    
//    return result;
//}
//
//print(sumEvenNumbers(array: arr)); // 30


// ========================================================= //

//30. Посчитать разницу между максимальным и минимальным
//[23, 3, 19, 21, 16] -> 20 (23 - 3)
//[1, 434, 555, 34, 112] -> 554 (555 - 1)
//
//var arr = [23, 3, 19, 21, 16];
//var arr2 = [1, 434, 555, 34, 112];
//
//func differenceMaxMin(_ array: [Int]) -> Int {
//    var maxNum: Int, minNum: Int;
//    
//    maxNum = array.max() ?? 0;
//    minNum = array.min() ?? 0;
//    
//    return maxNum - minNum;
//}
//
//print(differenceMaxMin(arr)); // 20
//print(differenceMaxMin(arr2)); // 554

// ========================================================= //

//31.31. Дана последовательность, найти сколько пропущено между минимальным и максимальным элементом массива (contains)
//[4,6,8] -> 2 (5, 6)
//[1,2,3,4,6] -> 1 (5)
//[1,2,3] -> 0 ()

//var arr1 = [4, 6, 8];
//var arr2 = [1, 2, 3, 4, 6];
//var arr3 = [1, 2, 3];
//
//func consecutive(_ array: [Int]) -> Int {
//    var maxNum = array.max() ?? 0;
//    var minNum = array.min() ?? 0;
//    var emptyNumCounter: Int = 0;
//    
//    for item in minNum...maxNum {
//        if (!array.contains(item)) {
//            emptyNumCounter += 1;
//        }
//    }
//    
//    return emptyNumCounter;
//    
//}
//
//print(consecutive(arr1)); // 2
//print(consecutive(arr2)); // 1
//print(consecutive(arr3)); // 0

// ========================================================= //

//32. Вытащить максимальные элементы из массива в заданном количестве
//largest(3, [7,6,5,4,3,2,1]) -> [7,6,5]

//var arr = [7, 6, 5, 4, 3, 2, 1];
//var arr2 = [99,8,44,56,12,3,2];
//
//func largest(count: Int, array: [Int]) -> [Int] {
//    var result: [Int] = [];
//    var counter = 0;
//    
    //for item in array.sorted(by: >) {
//        result.append(item.element);
//        counter += 1;
//        
//        if (counter == count) {
//            return result;
//        }
//    }
//    
//    return [];
//    
//}
//
//print(largest(count: 3, array: arr));
//print(largest(count: 4, array: arr2));

// ========================================================= //

//33. По какоми индексу вставить число в отсортированном массиве
//([1, 2, 3, 4, 7], 5) -> 4
//([1, 2, 3, 4, 7], 0) -> 0
//([1, 1, 2, 2, 2], 2) -> 2

//var arr1 = [1, 2, 3, 4, 7];
//
//func keepOrder(array: [Int], element: Int) -> Int {
//    var result: Int = 0;
//    
//    for (index, item) in array.enumerated() {
//        if (item > element) {
//            result = index;
//            break;
//        } else if (item == element) {
//            result = index + 1;
//        }
//    }
//    
//    return result;
//}
//
//print(keepOrder(array: arr1, element: 5)); // 4
//print(keepOrder(array: arr1, element: 0)); // 0
//print(keepOrder(array: arr1, element: 2)); // 2

// ========================================================= //

//34. Порезать строку
//trim("He", 1) -> "H..."

//func trim(_ string: String, _ num: Int) -> String {
//    return String(Array(string).prefix(num));
//}
//
//print(trim("He", 1)); // "H"
//print(trim("Hello", 3)); // "Hel"

// ========================================================= //

//35. Каждый элемент поделить на порядок в массиве и суммировать
//[3,4,6] -> ( 3 / 1 ) + ( 4 / 2 ) + ( 6 / 3 ) = 7

//func add(array: [Int]) -> Int {
//    var result: Int = 0;
//    
//    for (index, item) in array.enumerated() {
//        result = (item / (index + 1)) + result;
//    }
//    
//    return result;
//}
//
//print(add(array: [3,4,6])); // 7
//print(add(array: [1,2,3])); // 3

// ================================================= //

//36. Найти минимальный элемент в массиве и удалить его из массива
//[1,2,3,4,5]  -> [2,3,4,5]
//[5,3,2,1,4]  -> [5,3,2,4]
//[2,1,2,1,2,1] -> [2,2,2]
//[0,1,0,1,0]  -> [1,1]

//func removeSmallest(_ array: [Int]) -> [Int] {
//    var resultArray: [Int] = [];
//    var minNum = array.min() ?? 0;
//    
//    for item in array {
//        if (item != minNum) {
//            resultArray.append(item);
//        }
//    }
//    
//    return resultArray;
//}
//
//print(removeSmallest([1,2,3,4,5])); // [2,3,4,5]
//print(removeSmallest([5,3,2,1,4])); // [5,3,2,4]
//print(removeSmallest([2,1,2,1,2,1])); // [2,2,2]
//print(removeSmallest([0,1,0,1,0])); // [1,1]


// ================================================= //

//37. Один массив прибавить ко второму массиву - все способы
//[1, 2, 3] + [4, 5] -> [1, 2, 3, 4, 5]

// 1.
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    return lhs + rhs
//}
// 2.
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    var result = lhs;
//    result.append(contentsOf: rhs)
//    return result;
//}
// 3.
//func sumArrays(lhs: [Int], rhs: [Int]) -> [Int] {
//    var result = lhs;
//    result.insert(contentsOf: rhs, at: lhs.count - 1 );
//    return result;
//}


//print(sumArrays(lhs: [1,2,3], rhs: [4,5]))

// ================================================= //

//38. Суммировать каждый элемент массива по индексам
//[1, 2, 3] + [4, 5] -> [1+4, 2+5, 3+0] -> [5, 7, 3]
//
//func sumElementsByIndex(lhs: [Int], rhs: [Int]) -> [Int] {
//    var result: [Int] = [];
//    var index = 0
//    
//    while index < max(lhs.count, rhs.count) {
//        
//        let item1 = index < lhs.count ? lhs[index] : 0
//        let item2 = index < rhs.count ? rhs[index] : 0
//        
//        result.append(item1 + item2)
//        index += 1
//    }
//    
//    return result;
//}
////
//print(sumElementsByIndex(lhs: [1, 2, 3], rhs: [4, 5])); // [5, 7, 3]

// ================================================= //

//39. Вернуть первый непоследовательный элемент и его индекс
//[1, 2, 3, 4, 5, 7, 8, 9] -> (7, 5)

//func firstNonConsequitive(array: [Int]) -> (Int, Int) {
//    var result = (0, 0);
//    
//    for (index, item) in array.enumerated() {
//        var nextIndex = index + 1
//        
//        if (array[nextIndex] != item + 1) {
//            result = (array[nextIndex], nextIndex);
//            break;
//        }
//    }
//    
//    return result;
//}
//
//print(firstNonConsequitive(array: [1, 2, 3, 4, 5, 7, 8, 9])); // (7, 5)

// ================================================= //

//40. Проверить что массив монотонно убывающий
//[10, 9, 8, 7, 6, 6, 5] -> true
//[10, 9, 8, 8, 7, 9] -> false
//[10,10,10] -> true

//func isIncreasing(array: [Int]) -> Bool {
//
//    for (index, item) in array.enumerated() {
//        if index == 0 {
//            continue
//        }
//        if array[index - 1] < array[index] {
//            return false
//        }
//    }
//    
//    return true
//    
//}
//
//print(isIncreasing(array: [10, 9, 8, 7, 6, 6, 5])); // true
//print(isIncreasing(array: [10, 9, 8, 8, 7, 9] )); // false
//print(isIncreasing(array: [10,10,10] )); // true

// ================================================= //

//41. Написать функцию которая принимает массив чисел и проверяет монотонный он или нет
//[1,3,6,8] → true
//[6, 3, 2, 1] → true
//[5,5] → true
//[1, 2, 2, 5, 5, 7] → true
//[1, 2, 3, 3, 3, 1] → false
//[5, 4, 3, 2, 1, 2, 3] → false

//func isMonotone(_ array: [Int]) -> Bool {
//    var arrIsDecreasing: Bool = false;
//    var arrIsIncreasing: Bool = false;
//    
//    if (array[0] > array[1]) {
//        arrIsDecreasing = true
//    } else if (array[0] < array[1]) {
//        arrIsIncreasing = true
//    }
//    
//    for (index, item) in array.enumerated() {
//        var isNotEndLoop = index < array.count - 1
//        if (isNotEndLoop) {
//            var nextItem = array[index + 1]
//            
//            if (arrIsIncreasing && array[index] > nextItem){
//                return false;
//            }
//            if (arrIsDecreasing && array[index] < nextItem) {
//                return false
//            }
//        }
//    }
//    
//    return true;
//}
//
//print(isMonotone([1, 3, 6, 8])); // true
//print(isMonotone([6, 3, 2, 1])); // true
//print(isMonotone([5, 5])); // true
//print(isMonotone([1, 2, 2, 5, 5, 7])); // true
//print(isMonotone([1, 2, 3, 3, 3, 1])); // false
//print(isMonotone([5, 4, 3, 2, 1, 2, 3])); // false

// ================================================= //

//42. Маскировать кредитную карту
//"12345678" -> "****4678"
//"1234" -> "1234"
//"123456" -> "**3456"

//func masked(string: String) -> String {
//    let MIN_COUNT = 4;
//    
//    if (string.count <= MIN_COUNT) {
//        return string;
//    }
//    
//    var resultArr: [String] = [];
//    
//    for (index, item) in Array(string).reversed().enumerated() {
//        if (index >= MIN_COUNT) {
//            resultArr.append("*");
//        } else {
//            resultArr.append(String(item));
//        }
//    }
//
//    return String(resultArr.reversed().joined())
//}
//
//print(masked(string: "12345678")); // ****5678
//print(masked(string: "1234")); // 1234
//print(masked(string: "123456")); // **3456
//print(masked(string: "11")); // 11
//print(masked(string: "0")); // 0


// решение, которое мне случайно попалось на кодварс
//func maskify(_ string:String) -> String {
//  string.enumerated().map { $0 < string.count - 4 ? "#" : "\($1)"}.joined()
//}
// ================================================= //

//43. Сконвертироват значение типа Any в тип данных Int

//func someToInt(_ value: Any) -> Int {
//
//        if let value = value as? Int {
//                return value
//        }
//        return 0
//}
//
//print(someToInt("10")) //

    // ????????
// ================================================= //

//44. Написать фукнцию суммирования всех элементов массива неопределенных элементов (использовать интерполяцию или type casting)
//["1", 2, 3.5, Character(4)] -> 10.5

//func sumOfValues(array: [Any]) -> Double {
//    var sum: Double = 0.0
//    
//    for item in array {
//        if let intItem = item as? Int {
//            sum += Double(intItem)
//        } else if let doubleItem = item as? Double {
//            sum += Double(doubleItem)
//        } else if let str = item as? String, let num = Double(str) {
//            sum += num
//        } else if let char = item as? Character, let num = Double(String(char)) {
//            sum += num
//        }
//    }
//    
//    
//    return sum
//}
//
//print(sumOfValues(array: ["1", 2, 3.5, Character("4")])) // 10.5

// ================================================= //

//45. Удалить элементы по диапазону индексов (использовать метод removeSubrange(:))
//[1, 2, 3, 4, 5, 6, 7], 1...3 -> [1, 5, 6, 7]

//func removeByIndexRange(array: [Int], range: ClosedRange<Int>) -> [Int] {
//    var result = array;
//    result.removeSubrange(range)
//    return result
//}
//
//print(removeByIndexRange(array: [1, 2, 3, 4, 5, 6, 7], range: 1...3)); // [1, 5, 6, 7]

// ================================================= //

//46. Найти все непоследовательные элементы в массиве
//[1, 2, 3, 4, 5, 7, 8, 9, 11] -> [7,11]

//func findFirstNonConsecutive(array: [Int]) -> [Int] {
//    var result: [Int] = [];
//    
//    for (index, item) in array.enumerated() {
//        if (index + 1 < array.count) {
//            if (array[index] + 1 != array[index + 1]) {
//                result.append(array[index + 1])
//            }
//        }
//    }
//    
//    return result;
//}
//
//print(findFirstNonConsecutive(array: [1, 2, 3, 4, 5, 7, 8, 9, 11])); // [7, 11]

// ================================================= //

//47. Дан массив цен , нужно найти самый дорогой продукт на котрый хватит хватил кеш
//13, [3, 10, 300, 15, 3] -> 10

//func mostExpensive(cash: Int, products: [Int]) -> Int {
//    var result: Int = 0;
//    
//    for i in products {
//        if (i >= result && i <= cash) {
//            result = i;
//        }
//    }
//    
//    return result;
//}
//
//print(mostExpensive(cash: 13, products: [3, 10, 300, 15, 3])) // 10;

// ================================================= //

//48. Дан массив нужно сгруппировать в массив другого вида
//[1, 2, 2, 3, 3, 3] -> [[1], [2,2], [3, 3, 3]]

//func groupElements(array: [Int]) -> [[Int]] {
//    var result: [[Int]] = []
//    var subArray: [Int] = []
//    
//    
//    for (index, item) in array.enumerated() {
//        if (index == 0) {
//            subArray.append(item)
//            continue
//        }
//            
//        if (array[index - 1] == array[index]) {
//            subArray.append(item)
//        } else {
//            result.append(subArray)
//            subArray = []
//            subArray.append(item)
//        }
//    }
//    
//    result.append(subArray)
//    return result
//    
//}
////
//print(groupElements(array: [1, 2, 2, 3, 3, 3])) // [[1], [2,2], [3, 3, 3]]

// ================================================= //
//49. Проверить что массив является горой
//[1, 2, 3, 2, 1] -> true
//[1, 2, 3, 4, 5] -> false

//func isValidMountain(array: [Int]) -> Bool {
//    if (array.count < 3) { return false }
//    
//    var leftIndex = 0
//    var rightIndex = array.count - 1
//    
//    while leftIndex < rightIndex {
//        if ( array[leftIndex] !=  array[rightIndex]) {
//            return false
//        }
//        
//        leftIndex += 1
//        rightIndex -= 1
//    }
//
//    return true
//    
//}

//print(isValidMountain(array: [1, 2, 3, 2, 1])) // true
//print(isValidMountain(array: [1, 2, 3, 4, 5])) // false
//print(isValidMountain(array: [3, 4, 5, 6, 5, 4, 3])) // true
//print(isValidMountain(array: [0, 0, 1, 10, 0, 5])) // false
//print(isValidMountain(array: [0,1,0])) // true
//print(isValidMountain(array: [0,1])) // false

// ================================================= //

//50. Дано число N нужно вывести массив с O до N и от N до 0
//4 -> [0, 1, 2, 3, 4, 3, 2, 1, 0]

//func thereAndBack(_ num: Int) -> [Int] {
//    var result: [Int] = [];
//    
//    for item in 0...num {
//        if (item <= num) { result.append(item) }
//    }
//    
//    for item in (0...num - 1).reversed() {
//        if (item >= 0) { result.append(item) }
//    }
//    
//    return result;
//}
//
//print(thereAndBack(4)); // [0, 1, 2, 3, 4, 3, 2, 1, 0]

// ================================================= //

