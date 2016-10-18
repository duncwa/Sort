//
//  SortBrain.swift
//  Sort
//
//  Created by Duncan Wallace on 2/3/16.
//  Copyright © 2016 Duncan Wallace. All rights reserved.
//

import Foundation

class SortBrain {
  var sortData = SortData()
  var arrayItems = [Int]()
  func theSorter(_ sortOption: String) -> [Int] {
    
    // Switch statement for sort selection
    switch sortOption {
      case "Insertion":
        print(sortOption, " Sort Running.")
        arrayItems = insertionSort(sortData.itemsInt)
      case "Merge":
        print(sortOption, " Sort Running.")
        arrayItems = mergeSort(sortData.itemsInt)
      case "Selection":
        print(sortOption, " Sort Running.")
        arrayItems = selectionSort(sortData.itemsInt)
      case "Bubble":
        print(sortOption, " Sort Running.")
        arrayItems = bubbleSort(sortData.itemsInt)
      case "Quick":
        print(sortOption, " Sort Running.")
        arrayItems = quickSort(sortData.itemsInt)
      default:
        break;
    }
    return arrayItems
  }

  func insertionSort(_ items: [Int]) -> [Int] {
    //Insertion Sort
    var array = items
    for iterator in 0..<array.count {
      var key = iterator
      let tempArrayItem = array[key]
      print("Outer FOR value of iterator is \(iterator)")
      while key > 0 && array[key] < array[key - 1] {
        array[key] = array[key - 1]
        array[key - 1] = tempArrayItem
        print("Inner WHILE value of key is \(key)  -> Insertion sort array is now \(array) \n \n \n")
        key -= 1
      }
    }
    return array
  }
  
  
  func selectionSort(_ items: [Int]) -> [Int] {
    //Selection Sort
    var array = items
    for iterator in 0..<array.count {
      print("Outer FOR value of iterator is \(iterator)")
      var min = iterator
      for key in iterator...array.count - 1 {
        if array[key] < array[min] {
          min = key
          print("Inner FOR value of key is \(key)  -> Selection sort array is now \(array) \n \n \n")
        }
      }
      let tempArrayItem = array[min]
      if min != iterator {
        array[min] = array[iterator]
        array[iterator] = tempArrayItem
      }
    }

    return array
  }
  
  func bubbleSort(_ items: [Int]) -> [Int] {
    //Bubble Sort
    var array = items
    var swapped = true
    var arrayPosition: Int = 0
    //while arrayPosition < array.count {

    repeat {
      print("Untouched Bubble sort array is \(array) \n \n \n")
      for iterator in 0..<array.count - 1 {
        print("Inner FOR value of iterator is \(iterator)")
        let tempArrayItem = array[iterator]
        if array[iterator] > array[iterator + 1] {
          swapped = true
          print("swapped set to \(swapped)")
          array[iterator] = array[iterator + 1]
          array[iterator + 1] = tempArrayItem
          print("Last swapped values are array[iterator] \( array[iterator]) and array[iterator + 1] \( array[iterator + 1])  \n \n \n")
          print("Bubble sort array is now \(array) \n \n \n")
        } else {
          swapped = false
          print("swapped set to \(swapped)")
        }
        print("Inner FOR statement - Value of swapped is \(swapped)  -> Value of iterator is \(iterator)  \n \n \n")
      }
      arrayPosition += 1
    } while (arrayPosition < array.count - 1)
    print("arrayPosition \(arrayPosition) and (array.count - 1) \(array.count - 1)")
    return array
  }
  
  func mergeSort(_ items: [Int]) -> [Int] {
    //Merge Sort
    var array = items
    array = [0]

    return array
  }
  
  func quickSort(_ items: [Int]) -> [Int] {
    //Quick Sort
    var array = items
    array = [0]

    return array
  }
  
    /* Solution using generics - researching
    func selectionSorter<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
      //Selection Sort
      //var items = ["selection 1","selection 2","selection 3","selection 4","selection 5"]
      return array
    }
  
    func bubbleSorter<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
      //Bubble Sort
      //var items = ["bubble 1","bubble 2","bubble 3","bubble 4","bubble 5"]
      return array
    }
  
    func mergeSorter<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
      //Merge Sort
      //var items = ["merge 1","merge 2","merge 3","merge 4","merge 5"]
      return array
    }
 
    func quickSorter<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T]{
      //Quick Sort
      //var items = ["quick 1","quick 2","quick 3","quick 4","quick 5"]
      return array
    }
   */
}
