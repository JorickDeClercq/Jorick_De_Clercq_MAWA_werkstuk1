//
//  Adress.swift
//  Werkstuk1_Jorick_De_Clercq
//
//  Created by DE CLERCQ Jorick (s) on 03/05/2018.
//  Copyright © 2018 DE CLERCQ Jorick (s). All rights reserved.
//

import Foundation
import MapKit
import  UIKit

class Adress: NSObject {
    var straat : String?
    var huisnummer : Int?
    var postcode : Int?
    var gemeente : String?
    
    init(Straat:String, Huisnummer:Int, Postcode:Int, Gemeente:String) {
        straat = Straat
        huisnummer = Huisnummer
        postcode = Postcode
        gemeente = Gemeente
    }
}
