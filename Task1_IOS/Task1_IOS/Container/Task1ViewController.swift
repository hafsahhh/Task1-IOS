//
//  MainViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class Task1ViewController: UIViewController {

    
    
    @IBOutlet weak var loginButtonOutlet: UIButton!{
        didSet{
            loginButtonOutlet.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var forgetPassOutlet: UIButton!
    
    
    
    @IBOutlet weak var signinButtonOutlet: UIButton!{
        didSet{
            signinButtonOutlet.layer.cornerRadius = 10
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    @IBAction func loginButtonAct(_ sender: UIButton!){
        let loginBtnControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        loginBtnControl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginBtnControl, animated: true)
    }

    @IBAction func signupBtnAction(_ sender: UIButton!) {
        let signupButtonControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        signupButtonControl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(signupButtonControl, animated: true)
    }
}
