//
//  TapViewController.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/18/21.
//

import UIKit

class TapViewController: UIViewController {

    @IBOutlet weak var lblDesc: UILabel!
    
    var twoDimensionalArrayStruct: Person?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDesc.text = "You selected \(twoDimensionalArrayStruct?.name ?? "lisa") as a teacher"
        
        
        // Do any additional setup after loading the view.
    }
    

}
