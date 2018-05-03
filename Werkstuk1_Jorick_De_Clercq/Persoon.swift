//
//  Persoon.swift
//  Werkstuk1_Jorick_De_Clercq
//
//  Created by DE CLERCQ Jorick (s) on 03/05/2018.
//  Copyright © 2018 DE CLERCQ Jorick (s). All rights reserved.
//

import Foundation
import MapKit
import UIKit

class Persoon: NSObject {
    var naam : String?
    var voornaam : String?
    var image:UIImage
    var adres : Adress
    var coordinaat : CLLocationCoordinate2D
    
   
    init(Naam:String, Voornaam:String, Image:UIImage, Adres:Adress, Coordinaat:CLLocationCoordinate2D) {
        naam = Naam
        voornaam = Voornaam
        image = Image
        adres = Adres
        coordinaat = Coordinaat
    }
}


