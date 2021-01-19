//
//  ViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/8/21.
//

import UIKit


class ViewController: UIViewController{

    

    @IBOutlet weak var stackFirst: UIStackView!
    @IBOutlet weak var stackSecond: UIStackView!
    @IBOutlet weak var stackAll: UIStackView!
    @IBOutlet weak var giveTry: UIButton!
    @IBOutlet var tableView: UITableView!
    
    
    var navigationBarAppearace = UINavigationBar.appearance()

    var landscape = UIView()
  
    
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.titleView = UIImageView (image: UIImage(named: "logo"))
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.setUpConstraints()

        
          
        }
    
//    let buttonCV: UIButton {
//        let button = UIButton(type: UIButton.system)
//    }

    override func viewDidAppear(_ animated: Bool) {


     

    }


    func setUpConstraints (){

        DispatchQueue.main.async {
            
           
    
           
            
            self.giveTry.layer.borderColor = UIColor.white.cgColor
            self.giveTry.layer.borderWidth = 1.0

            
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height

            let internalWidth = screenWidth*0.8
            let internalHeight = screenHeight*0.8

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
