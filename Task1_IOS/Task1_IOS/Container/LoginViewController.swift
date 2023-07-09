//
//  LoginViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameLoginOultet: UITextField!
    
    @IBOutlet weak var loginViewOutlet: UIView!{
        didSet{
            loginViewOutlet.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    @IBOutlet weak var PasswordLoginOultet: UITextField!
    
    
    @IBOutlet weak var forgetBtnOutlet: UIButton!
    
    
    @IBOutlet weak var loginBtnOutlet: UIButton!{
        didSet{
            loginBtnOutlet.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtnOutlet.isEnabled = false
        PasswordLoginOultet.isSecureTextEntry = true
        loginBtnOutlet.addTarget(self, action:  #selector(checkValidasi),  for:.editingChanged )
        PasswordLoginOultet.addTarget(self, action:  #selector(checkValidasi),  for:.editingChanged )

    }
    
//Fungsi Validasi
    @objc private func checkValidasi(){
        let isPassValid = PasswordLoginOultet.validPassword(PasswordLoginOultet.text ?? "")
        
        //jika email dan password valid maka button akan berwarna kuning
        if isPassValid{
            loginBtnOutlet.isEnabled = true
            loginBtnOutlet.backgroundColor = UIColor(named: "warnakuning" )
        } else {
            loginBtnOutlet.isEnabled = false
            loginBtnOutlet.backgroundColor = UIColor(named: "warnaInvalid" )
        }
    }


    
    @IBAction func loginNowButtonAction(_ sender: UIButton!) {
        let loginBtnControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainTabBarViewController") as! MainTabBarViewController
        loginBtnControl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginBtnControl, animated: true)
    }
    
    @IBAction func forgetBtnAction(_ sender: Any) {
        let forgetBtnControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
        forgetBtnControl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(forgetBtnControl, animated: true)
    }
    
    @IBAction func registerInLoginBtnAct(_ sender: UIButton) {
        let registerBtnCtrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        registerBtnCtrl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(registerBtnCtrl, animated: true)
    }
}
