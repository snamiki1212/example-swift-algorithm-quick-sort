//
//  main.swift
//  quicksort
//
//  Created by shunnamiki on 2021/08/03.
//

import Foundation



print(
    "quickSortSlow: ",
    isSame(
        quickSortSlow([3,1,2,6,4,7,8,5]),
        [1,2,3,4,5,6,7,8,]
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
