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
    var country: String?
    var desc: String?
    
}


class TableViewController: UIViewController {

    let pageCellId = "PageTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    
    
    let twoDimensionalArrayStruct: [[Person]] = [
        [
            Person.init(name: "John", image: "johnny", country: "Philippines", desc: "For Kids"),
            Person.init(name: "Stacey", image: "jisoo", country: "Philippines", desc: "For Kids"),
            Person.init(name: "June", image: "icon", country: "Philippines", desc: "For Kids")

        
        ],
        [
            Person.init(name: "Lisa", image: "lisa", country: "Thailand", desc: "For Kids"),
            Person.init(name: "Rose", image: "ose", country: "Korea", desc: "For Kids"),
            Person.init(name: "Jennie", image: "jennie", country: "Korea", desc: "For Kids"),
            Person.init(name: "Jisoo", image: "jisoo", country: "Korea", desc: "For Kids")
        ],
        [
            Person.init(name: "Kate", image: "ose", country: "Phillipines", desc: "For Kids"),
            Person.init(name: "Pierce", image: "pierce", country: "Korea", desc: "For Kids"),
            Person.init(name: "Jhaniel", image: "johnny", country: "Korea", desc: "For Kids")

        
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
        let person = twoDimensionalArrayStruct [indexPath.section][indexPath.row]
        cell.lblName.text = person.name
        cell.img.image = UIImage(named: person.image!)
        cell.lblCountry.text = person.country
        cell.lblDesc.text = person.desc
        
        cell.layoutIfNeeded()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print ("\(indexPath.section) - \(indexPath.row)")
        let next = self.storyboard?.instantiateViewController(withIdentifier: "TapViewController") as! TapViewController
        next.twoDimensionalArrayStruct = twoDimensionalArrayStruct[indexPath.section][indexPath.row]
        self.present(next, animated: true, completion: nil)
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Teachers"
        label.backgroundColor = UIColor.systemGray
        return label
    }
}
