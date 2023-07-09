//
//  RegisterViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class RegisterViewController: UIViewController {
    

    @IBOutlet weak var usernameRegisterOultet: UITextField!
    
    @IBOutlet weak var fullnameRegisterOulte: UITextField!
    
    @IBOutlet weak var passwordRegisterOulte: UITextField!
    
    @IBOutlet weak var repeatPassRegisterOulte: UITextField!
    
    @IBOutlet weak var loginBtnOutlet: UIStackView!
    
    @IBOutlet weak var registerBtnOutlet: UIButton!{
        didSet{
            registerBtnOutlet.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet weak var registerViewOutlet: UIView!{
        didSet{
            registerViewOutlet.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerBtnOutlet.isEnabled = false
        passwordRegisterOulte.isSecureTextEntry = true
        repeatPassRegisterOulte.isSecureTextEntry = true
        passwordRegisterOulte.addTarget(self, action:  #selector(checkValidasi),  for:.editingChanged )
        repeatPassRegisterOulte.addTarget(self, action: #selector(checkValidasi), for:.editingChanged )
        usernameRegisterOultet.addTarget(self, action:  #selector(textFieldDidChange),  for:.editingChanged )
        fullnameRegisterOulte.addTarget(self, action: #selector(textFieldDidChange), for:.editingChanged )
    }
    
    //Fungsi Validasi
        @objc func checkValidasi(){
            let isPassValid = passwordRegisterOulte.validPassword(passwordRegisterOulte.text ?? "")
            let isRepeatPaaValid = repeatPassRegisterOulte.validPassword(repeatPassRegisterOulte.text ?? "")
            //jika password valid maka button akan berwarna kuning
            if isPassValid && isRepeatPaaValid {
                registerBtnOutlet.isEnabled = true
                registerBtnOutlet.backgroundColor = UIColor(named: "warnakuning" )
            } else {
                registerBtnOutlet.isEnabled = false
                registerBtnOutlet.backgroundColor = UIColor(named: "warnaInvalid" )
            }
        }
//fungsi untuk mencek semua kalau textfield sudah terpenuh
    @objc func textFieldDidChange() {
           if (usernameRegisterOultet.text == "" || fullnameRegisterOulte.text == "" || passwordRegisterOulte.text == "" || repeatPassRegisterOulte.text == "" ){
               registerBtnOutlet.isEnabled = false
               registerBtnOutlet.backgroundColor = UIColor(named: "warnaInvalid" )
           }else{
               registerBtnOutlet.isEnabled = true
           }
    }
    
    @objc func validasiPassword() {
        if repeatPassRegisterOulte.text == passwordRegisterOulte.text{
            let registerBtnControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            registerBtnControl.navigationItem.hidesBackButton = true
            self.navigationController?.pushViewController(registerBtnControl, animated: true)
        } else {
            registerBtnOutlet.isEnabled = false
            registerBtnOutlet.backgroundColor = UIColor(named: "warnaInvalid" )
            self.present(Alert.createAlertController(title: "warning", message: "wrong password"),animated: true)
        }
        
    }
    
    
    @IBAction func registerButtonAction(_ sender: UIButton) {
        validasiPassword()
    }
    

    @IBAction func loginBtnAction(_ sender: UIButton) {
        let loginBtnCtrl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        loginBtnCtrl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginBtnCtrl, animated: true)
    }
}
