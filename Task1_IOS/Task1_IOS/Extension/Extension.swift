//
//  Extension.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

extension UITextField{
    func validUsername(_ value:String) -> Bool {
        let usernameValid = "^[a-zA-Z-]+ ?.* [a-zA-Z-]+$"
        let usernamePred = NSPredicate(format:"SELF MATCHES %@", usernameValid)
        if usernamePred.evaluate(with: value){
            return true
        }
        return false
    }
    
    //fungsi regex yang dimana mengharuskan user untuk memasukkan 6 karakter dengan special 1 karakter
    func validPassword(_ value:String) -> Bool{
        let passwordValid = "^(?=.*[a-z])(?=.*[$@$#!%*?&]).{6,}$"
        let passwordPred = NSPredicate(format:"SELF MATCHES %@", passwordValid)
        if passwordPred.evaluate(with: value){
            return true
        }
        return false
    }
    
    func validKtp(_ value:String) -> Bool {
        let KtpValid = "^\\d{16}$"
        let KtpPred = NSPredicate(format:"SELF MATCHES %@", KtpValid)
        if KtpPred.evaluate(with: value){
            return true
        }
        return false
    }
}
