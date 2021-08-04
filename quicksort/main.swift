//
//  main.swift
//  quicksort
//
//  Created by shunnamiki on 2021/08/03.
//

import Foundation


let sample1   = [3,1,2,6,4,7,8,5]
print(
    "quickSortSlow: ",
    isSame(
        quickSortSlow(sample1),
        sample1.sorted()
    )
)



var sample2   = [3,1,2,6,4,7,8,5]
let expected2 = sample2.sorted()
quickSort(&sample2, 0, sample2.count-1)
print(
    "quicksort: ",
    isSame(
        sample2,
        expected2
    )
)

var sample3   = [1,5,1,5,1,5,1,5]
let exceted3  = sample3.sorted()
quickSort(&sample3, 0, sample3.count-1)
print(
    "quicksort: ",
    isSame(
        sample3,
        exceted3
    )
)


var sample4   = [9,8,7,6,5,4,3,2,1]
let exceted4  = sample4.sorted()
quickSort(&sample4, 0, sample4.count-1)
print(
    "quicksort: ",
    isSame(
        sample4,
        exceted4
    )
)

func isSame<T: Equatable>(_ list1: [T], _ list2: [T]) -> Bool {
    let len = list1.count
    if(len != list2.count) { return false }
    for (i, val) in list1.enumerated()  {
        if(val != list2[i]) { return false }
    }
    
    return true
}
