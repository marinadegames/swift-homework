import Foundation



//11. Даны 2 отсортированных значения нужно найти их пересечения
//[4,5,9,11] и [1, 2, 3, 4, 5, 5, 9] -> [4, 5, 9]

//func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    var resultArr: [Int] = []
//    var index1 = 0
//    var index2 = 0
//    
//    while index1 < nums1.count - 1 || index2 < nums2.count - 1 {
//        
//        let item1 = nums1[index1]
//        let item2 = nums2[index2]
//        
//        if  item1 == item2 {
//            resultArr.append(nums1[index1])
//            index1 += 1
//            index2 += 1
//            continue
//        }
//        
//        if item1 < item2 {
//            index1 += 1
//        }
//        
//        if item1 > item2 {
//            index2 += 1
//        }
//        
//        
//    }
//    
//    return resultArr
//}
//
//print(intersection([4,5,9,11], [1, 2, 3, 4, 5, 5, 9]))


//


//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [9,4]
//Explanation: [4,9] is also accepted.

//func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    
//    if nums1 == nums2 { return nums1 }
//    if nums1.isEmpty || nums2.isEmpty { return [] }
//    
//    var result: Set<Int> = []
//    let nums1 = nums1.sorted()
//    let nums2 = nums2.sorted()
//    
//       var index1 = 0
//       var index2 = 0
//   
//       while index1 < nums1.count && index2 < nums2.count {
//   
//           let item1 = nums1[index1]
//           let item2 = nums2[index2]
//   
//           if  item1 == item2 {
//               result.insert(nums1[index1])
//               index1 += 1
//               index2 += 1
//               continue
//           }
//   
//           if item1 < item2 {
//               index1 += 1
//           }
//   
//           if item1 > item2 {
//               index2 += 1
//           }
//   
//       }
//   
//       return Array(result)
//}
//
//
////print(intersection([1,2,2,1], [2,2])) // [2]
////print(intersection([4,9,5], [9,4,9,8,4])) // [9,4]
////print(intersection([2,1], [1,2,3])) // [1,2]
//print(intersection([1,2,2,1], [2,2])) // [2]
