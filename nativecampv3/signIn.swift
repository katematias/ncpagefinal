//
//  signIn.swift
//  nativecampv3
//
//  Created by Kate Antonette Matias on 1/8/21.
//

import UIKit


class signIn: UIViewController {
    
    var navigationBarAppearace = UINavigationBar.appearance()

    @IBOutlet weak var lblApple: UIButton!
    @IBOutlet weak var lblFacebook: UIButton!
    @IBOutlet weak var lblGoogle: UIButton!
    @IBOutlet weak var lblLine: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.lblApple.layer.borderColor = UIColor.systemGray.cgColor
        self.lblApple.layer.borderWidth = 1.0
        self.lblFacebook.layer.borderColor = UIColor.systemGray.cgColor
        self.lblFacebook.layer.borderWidth = 1.0
        self.lblGoogle.layer.borderColor = UIColor.systemGray.cgColor
        self.lblGoogle.layer.borderWidth = 1.0
        self.lblLine.layer.borderColor = UIColor.systemGray.cgColor
        self.lblLine.layer.borderWidth = 1.0
        
        self.navigationItem.titleView = UIImageView (image: UIImage(named: "logo"))
        self.navigationController?.navigationBar.barTintColor = UIColor.white

        // Do any additional setup after loading the view.

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
