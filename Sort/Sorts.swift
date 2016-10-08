//
//  Insertion.swift
//  Sort
//
//  Created by Duncan Wallace on 2/3/16.
//  Copyright © 2016 Duncan Wallace. All rights reserved.
//

import Foundation

class Sorts {
    var index: Int
    var items: [String]
    var key: Int
    var temp: String
    var item: String
  
  init(items: Array<String> = ["banana","apple","cake","orange","blueberry", "avocado", "ugli", "date", "raisin", "kuquat", "lychee", "jujube", "marion berry", "physalis", "pumpkin", "satsuma", "peach"], index: Int = 0, key: Int = 0, temp: String = " ", item:String = " ") {
  
      self.items = items
      self.index = index
      self.key = key
      self.temp = temp
      self.item = item
    }
    
    func insertionSorter() -> Array<String> {
        //Insertion Sort
      index = items.count
      for _ in items {
            key = index
            temp = items[index-1]
            while (key >= 0 && items[key-1] < items[index-1]) {
                //swap(&items[key], &items[key-1])
                temp = items[key-1]
                items[key-1] = items[key]
                items[key] = temp
                key = key - 1
                print("Pass #\(index)-outerFOR of #\(key)-innerWHILE insertion sort so far is \(items) \n \n \n")
            }
        }
        return items
    }
    func selectionSorter() -> Array<String> {
        //Selection Sort
        for index in 1..<items.count {                    // 2
            //key = index
            for key in index..<items.count {
                if items[index] > items[key] {
                    swap(&items[key], &items[index])
                    print("Pass #\(index)-outerFOR of #\(key)-innerFOR selection sort so far is \(items) \n \n \n")
                }
            }
        }
        
        return items
    }
  
    func bubbleSorter() -> Array<String> {
      items = ["bubble 1","bubble 2","bubble 3","bubble 4","bubble 5"]
      return items
    }
  
    func mergeSorter() -> Array<String> {
      items = ["merge 1","merge 2","merge 3","merge 4","merge 5"]
      return items
    }
 
    func quickSorter() -> Array<String> {
      items = ["quick 1","quick 2","quick 3","quick 4","quick 5"]
      return items
    }
}
