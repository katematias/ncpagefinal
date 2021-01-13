//
//  TableViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/13/21.
//

import UIKit

class TableViewController: UITableViewController {
    
//    public var names: [(String, (() -> Void))] = []
   
    @IBOutlet weak var lblNames: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    

//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return names.count
//    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = names[indexPath.row].0
//        return cell
//}
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        names[indexPath.row].1()
//    }
}
