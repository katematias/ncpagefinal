//
//  TableViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/13/21.
//

import UIKit


struct Person {
    
    var name: String?
    var image: String?
    
}


class TableViewController: UIViewController {

    let pageCellId = "PageTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    
    
    let twoDimensionalArrayStruct: [[Person]] = [
        [
            Person.init(name: "John", image: "johnny"),
            Person.init(name: "Stacey", image: "jisoo"),
            Person.init(name: "June", image: "icon")

        
        ],
        [
            Person.init(name: "Lisa", image: "lisa"),
            Person.init(name: "Rose", image: "ose"),
            Person.init(name: "Jennie", image: "jennie"),
            Person.init(name: "Jisoo", image: "jisoo")
        ],
        [
            Person.init(name: "Kate", image: "ose"),
            Person.init(name: "Pierce", image: "pierce"),
            Person.init(name: "Jhaniel", image: "johnny")

        
        ]
    
        
        
    ]
    
    override func viewDidLoad() {
    super.viewDidLoad()

        // register cell
        tableView.register(UINib.init(nibName: pageCellId, bundle: nil), forCellReuseIdentifier: pageCellId)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorColor = UIColor.systemGray
        
    }
    
//    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArrayStruct.count
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArrayStruct[section].count

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: pageCellId, for: indexPath) as! PageTableViewCell
        cell.selectionStyle = .none
//        let name = self.names[indexPath.row]
//        let name = indexPath.section == 0 ? names[indexPath.row] : anotherNames[indexPath.row]
//        let pages = names[indexPath.row]
        let person = twoDimensionalArrayStruct [indexPath.section][indexPath.row]
        cell.lblName.text = person.name
        cell.img.image = UIImage(named: person.image!)
        cell.lblCountry.text = "Section:\(indexPath.section) Row: \(indexPath.row)"
        
        cell.layoutIfNeeded()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let pages = page[indexPath.row]
        print ("\(indexPath.section) - \(indexPath.row)")
//        let sb = UIStoryboard(name: "tapViewController", bundle: nil)
//        // - redirect to page
//            let view = sb.instantiateViewController(withIdentifier: "tapViewController")
//            self.navigationController?.pushViewController(view, animated: true)
      let next = self.storyboard?.instantiateViewController(withIdentifier: "TapViewController") as! TapViewController
        next.twoDimensionalArrayStruct = twoDimensionalArrayStruct[indexPath.section][indexPath.row]
        
        self.present(next, animated: true, completion: nil)
        
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
//        let label2 = UILabel()
        label.text = "Teachers"
//        label2.text = "Trainees"
        label.backgroundColor = UIColor.systemGray
        return label
        
    
    }
    

    
    

}
