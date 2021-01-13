//
//  ViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/8/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = myData[indexPath.row]
//        return cell
    }
    

    @IBOutlet weak var stackFirst: UIStackView!
    @IBOutlet weak var stackSecond: UIStackView!
    @IBOutlet weak var stackAll: UIStackView!
    @IBOutlet weak var giveTry: UIButton!
    @IBOutlet var tableView: UITableView!
    
    let myData = ["First", "second", "third"]
    
    @IBAction func didTapButton() {
    
        
//        let vc = TableViewController()
//        vc.names = [
//            ("John", {
//                print("John")
//            }),
//            ("Stacey", {
//                print("Stacey")
//            }),
//            ("June", {
//                print("June")
//            }),
//            ("Rod", {
//                print("Rod")
//            }),
//            ("Allen", {
//                print("Allen")
//            })
//
//        ]
//        navigationController?.pushViewController(vc, animated: true)
    }
    
//    @IBAction func didTapButtonTry(){
////        let vc = myTableViewController()
////        vc.models = [
////            ("first", {
////                print ("first")
////            })
////        ]
////        navigationController?.pushViewController(vc, animated: true)
//    }
    
    
    var navigationBarAppearace = UINavigationBar.appearance()

    
    
    var landscape = UIView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.titleView = UIImageView (image: UIImage(named: "logo"))
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        tableView.delegate = self
        tableView.dataSource = self
        

          
        }

    override func viewDidAppear(_ animated: Bool) {


        self.setUpConstraints()

    }


    func setUpConstraints (){

        DispatchQueue.main.async {
            
           
            
            self.giveTry.layer.borderColor = UIColor.white.cgColor
            self.giveTry.layer.borderWidth = 1.0

            
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height

            let internalWidth = screenWidth*0.9
            let internalHeight = screenHeight*0.9

            let newX = (screenWidth - internalWidth)/2
            let newY = (screenHeight - internalHeight)/2

            self.landscape.frame = CGRect.init(x: newX , y: newY, width: internalWidth , height: internalHeight)

            self.view.layoutIfNeeded()
            
        }


    }

//}
//
//struct ContentView: UIView {
//    
//    var body: some UIView {
//        Label {
//            Text("")
//        }
//
//    }
//}

}
