//
//  Persoon.swift
//  Werkstuk1_Jorick_De_Clercq
//
//  Created by DE CLERCQ Jorick (s) on 03/05/2018.
//  Copyright © 2018 DE CLERCQ Jorick (s). All rights reserved.
//

import Foundation

import UIKit

class Persoon: NSObject {
    var naam : String?
    var voornaam : String?
    var image:UIImage
   
    init(Naam:String, Voornaam:String, Image:UIImage) {
        naam = Naam
        voornaam = Voornaam
        image = Image
    }
}


