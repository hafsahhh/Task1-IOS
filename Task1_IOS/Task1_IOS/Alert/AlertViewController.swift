//
//  AlertViewController.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 09/07/23.
//

import UIKit

class Alert {
    static func createAlertController(title: String, message: String) -> UIAlertController {
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         
         let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
             alert.dismiss(animated: true, completion: nil)
         }
         
         alert.addAction(okAction)
         
         return alert
     }
}
