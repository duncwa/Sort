//
//  ItemsTableViewController.swift
//  Sort
//
//  Created by Duncan Wallace on 2/3/16.
//  Copyright © 2016 Duncan Wallace. All rights reserved.
//

import UIKit

class ItemsTableViewController: UITableViewController {

  // MARK: Properties
    
  var sortedItems = Sorts()
  var itemsArray = Array<String>()
  let itemCellIdentifier = "itemViewCell"
  
  override func viewDidLoad() {
      super.viewDidLoad()
      loadItems()
      
  }
  
  // MARK: Sort Function Selection
  func loadItems() {
    // Switch statement for sort selection
    let index = self.tabBarItem.title!
    switch index {
    case "Insertion":
      itemsArray = sortedItems.insertionSorter()
    case "Merge":
      itemsArray = sortedItems.mergeSorter()
    case "Selection":
      itemsArray = sortedItems.selectionSorter()
    case "Bubble":
      itemsArray = sortedItems.bubbleSorter()
    case "Quick":
      itemsArray = sortedItems.quickSorter()
    default:
      break;
    }
    
    
    for value in itemsArray {
        
        //sortTable = items
        print("The sorted array item is: \(value).")
    }
    print("The sorted array is: \(itemsArray).")
    self.tableView.reloadData()
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection
      section: Int) -> Int {
    return itemsArray.count
  }

    
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return itemCellAtIndexPath(indexPath)
  }
  
  func itemCellAtIndexPath(_ indexPath:IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: itemCellIdentifier) as! ItemViewCell
    
    if let result_item = self.itemsArray[indexPath.row] as String?
    {
      cell.itemLabel.text = "\(result_item)"
    }
    return cell
  }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
