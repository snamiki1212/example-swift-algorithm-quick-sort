//
//  QuickSort.swift
//  quicksort
//
//  Created by shunnamiki on 2021/08/03.
//

import Foundation

// * Quick Sort (Does not sort in-place)
// Space Complexity: O(n) -> Your implementation should be O(1) (which means you're not supposed to create new arrays)
func quickSortSlow<T: Comparable>(_ arr: [T]) -> [T] {
  if arr.count <= 1 { return arr }
  var elements = arr
  let pivot = elements.removeLast()
  let lessOrEqual = elements.filter { $0 <= pivot }
  let greater = elements.filter { $0 > pivot }
  return quickSortSlow(lessOrEqual) + [pivot] + quickSortSlow(greater)
}

// * Quick Sort (sorts in-place)
// Time Complexity: O(N lgN) -> technically O(N^2) in the worst case
// Space Complexity: O(1)
func quickSort<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) {
    guard(start < end) else { return }
    let mid = partition(&arr, start, end)
    quickSort(&arr, start, mid - 1) // left side
    quickSort(&arr, mid + 1, end)   // right side
}

/// Returns the index of the pivot
/// - Parameters:
///   - arr: the array
///   - start: the start index
///   - end: the end index
/// - Returns: the index of the pivot after partitioning
func partition<T: Comparable>(_ arr: inout [T], _ start: Int, _ end: Int) -> Int {
    var head = start
    var tail = end
    let pivot = end

    guard (tail >= 0)    else { return head }
    guard (start <= end) else { return head }
    
    while(head < tail){
        while(arr[head] <  arr[pivot] && head < tail) { head += 1 } // head
        while(arr[tail] >= arr[pivot] && head < tail) { tail -= 1 } // tail
        if(head == tail) { break }
        if(arr[head] != arr[tail]) { arr.swapAt(head, tail) }
    }
    if head != pivot { arr.swapAt(head, pivot) }
    return head
}

