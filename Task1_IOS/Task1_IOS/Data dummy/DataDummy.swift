//
//  DataDummy.swift
//  Task1_IOS
//
//  Created by Siti Hafsah on 08/07/23.
//

import UIKit

struct dataDummy {
    let imageHome : UIImage
    let nameHome : String
    let addressHome : String
}
struct dataDummyHistory{
    let imageHistory : UIImage
    let nameHistory : String
    let addressHistory : String
}

struct dataDummyAccount{
    let imageAccount : UIImage
    let text1Account : String
    let text2Account : String
}
var cellHome : [dataDummy] = [
    dataDummy.init(imageHome: UIImage(named: "PT.Phincon")!, nameHome: "PT. Phincon", addressHome: "Office. 88 @Kasablanka Office Tower 18th Floor"),
    dataDummy.init(imageHome: UIImage(named: "TelkomselSmartOffice")!, nameHome: "Telkomsel Smart Office", addressHome: "Jl. Jend. Gatot Subroto Kav. 52. Jakarta Selatan"),
    dataDummy.init(imageHome: UIImage(named: "Rumah")!, nameHome: "Rumah", addressHome: "Jakarta")
]

var cellHistory : [dataDummyHistory] = [
    dataDummyHistory.init(imageHistory: UIImage(named: "PT.Phincon")!, nameHistory: "Check In - PT. Phincon - 9:00 AM", addressHistory: "Office. 88 @Kasablanka Office Tower 18th Floor"),
    dataDummyHistory.init(imageHistory: UIImage(named: "PT.Phincon")!, nameHistory: "Check Out PT. Phincon - 18:00 PM", addressHistory: "Office. 88 @Kasablanka Office Tower 18th Floor"),
    dataDummyHistory.init(imageHistory: UIImage(named: "TelkomselSmartOffice")!, nameHistory: "Check In - TSO - 9:00 AM", addressHistory: "Jl. Jend. Gatot Subroto Kav. 52. Jakarta Selatan"),
    dataDummyHistory.init(imageHistory: UIImage(named: "TelkomselSmartOffice")!, nameHistory: "Check Out - TSO - 20:00 PM", addressHistory: "Jl. Jend. Gatot Subroto Kav. 52. Jakarta Selatan"),
    dataDummyHistory.init(imageHistory: UIImage(named: "PT.Phincon")!, nameHistory: "Check In - PT. Phincon - 9:00 AM", addressHistory: "Office. 88 @Kasablanka Office Tower 18th Floor"),
    dataDummyHistory.init(imageHistory: UIImage(named: "PT.Phincon")!, nameHistory: "Check Out PT. Phincon - 18:00 PM", addressHistory: "Office. 88 @Kasablanka Office Tower 18th Floor")
]

var cellAccount: [dataDummyAccount] = [
    dataDummyAccount.init(imageAccount: UIImage(named: "business-card")!, text1Account: "No. Karyawan", text2Account: "NIK-0909090909"),
    dataDummyAccount.init(imageAccount: UIImage(named: "book")!, text1Account: "Alamat", text2Account: "Jakarta Selatan"),
    dataDummyAccount(imageAccount: UIImage(named: "password")!, text1Account: "Change Password", text2Account: "*************")
]
