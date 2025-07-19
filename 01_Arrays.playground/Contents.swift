
import Foundation

// 1. Посчитать сумму положительных чисел в массиве
//[1,-4,7,12] -> 1 + 7 + 12 = 20

//var arr = [1,-4,7,12];
//
//func sumOfPositives(_ array: [Int]) -> Int {
//    var result = 0;
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
//print(sumOfPositives(arr)); // 20

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
//
//func noOdds(array: [Int]) -> [Int] {
//    var result : [Int] = [];
//    
//    for item in array {
//        if (item % 2 == 0) {
//            result.append(item)
//        }
//    }
//    
//    return result;
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
//    var maxNumbers: [Int] = [];
//    var sum = 0;
//    
//    for i in array {
//        maxNumbers.append(i.min() ?? 0)
//    }
//    
//    for i in maxNumbers {
//        sum += i
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

func findIndex(_ array: [Int], target: Int) -> Int {
}


// ========================================================= //
// ========================================================= //
// ========================================================= //
// ========================================================= //
// ========================================================= //
// ========================================================= //
// ========================================================= //

