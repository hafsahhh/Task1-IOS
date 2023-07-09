//
//  ForgetPasswordViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var forgetPassViewOutlet: UIView!{
        didSet{
            forgetPassViewOutlet.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    
    @IBOutlet weak var ktpOutlet: UITextField!
    
    @IBOutlet weak var repeatPassOutlet: UITextField!
    
    @IBOutlet weak var passwordForget: UITextField!
    
    @IBOutlet weak var resetPasswordOutlet: UIButton!{
        didSet{
            resetPasswordOutlet.layer.cornerRadius =  10
        }
    }
    
    @IBOutlet weak var loginBtnOutlet: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        resetPasswordOutlet.isEnabled = false
        passwordForget.isSecureTextEntry = true
        repeatPassOutlet.isSecureTextEntry = true
        passwordForget.addTarget(self, action: #selector(checkValidasi), for:.editingChanged)
        repeatPassOutlet.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        ktpOutlet.addTarget(self, action:  #selector(checkValidasi),  for:.editingChanged )

    }
    //Fungsi Validasi
        @objc private func checkValidasi(){
            let isKtpValid = ktpOutlet.validKtp(ktpOutlet.text ?? "")
            let isPasswordValid = passwordForget.validPassword(passwordForget.text ?? "")
            if isKtpValid && isPasswordValid{
                resetPasswordOutlet.isEnabled = true
            } else {
                resetPasswordOutlet.isEnabled = false
            }
        }
//fungsi untuk mencek semua kalau textfield sudah terpenuh
    @objc func textFieldDidChange() {
        if passwordForget.text == "" || repeatPassOutlet.text == ""{
            resetPasswordOutlet.isEnabled = false
            resetPasswordOutlet.backgroundColor = UIColor(named: "warnaInvalid" )
           }else{
               resetPasswordOutlet.isEnabled = true
               resetPasswordOutlet.backgroundColor = UIColor(named: "warnakuning" )

           }
    }

//fungsi validasi password sama
    @objc func validasiPassword(){
        if passwordForget.text == repeatPassOutlet.text{
            let resetPassControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            resetPassControl.navigationItem.hidesBackButton = true
            self.navigationController?.pushViewController(resetPassControl,animated: true)
        }else{
            resetPasswordOutlet.isEnabled = false
            resetPasswordOutlet.backgroundColor = UIColor(named: "warnaInvalid")
            self.present(Alert.createAlertController(title: "warning", message: "Wrong password"),animated: true)
        }
    }
    

    @IBAction func resetPassAction(_ sender: UIButton) {
        validasiPassword()
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        let loginBtnControl = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        loginBtnControl.navigationItem.hidesBackButton = true
        self.navigationController?.pushViewController(loginBtnControl, animated: true)
    }
    
}
