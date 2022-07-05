//
//  CodingClub.swift
//  DSA
//
//  Created by Abdullah on 05/07/2022.
//

import Foundation

/** Giviing an Array of N integers, and an integer K, find the number of pairs of element in the array whose sum is equal to K.
 Input: N = 4, arr[] = { 1,5,7,1 } K = 6
 Output: 2 */


func getPairsCount(arr: [Int], sum: Int) {
    var unorderedMap = [Int: Int]()
    var count = 0
   
    for i in 0..<arr.count {
        if unorderedMap.contains(where: { $0.key  == (sum - arr[i])}) {
            count = count + unorderedMap[sum - arr[i]]!
        }
        if unorderedMap.contains(where: { $0.key == arr[i]}) {
            unorderedMap[arr[i]]! += 1
        }
        else {
            unorderedMap[arr[i]] = 1
        }
    }
    print("the count is \(count)")
}
