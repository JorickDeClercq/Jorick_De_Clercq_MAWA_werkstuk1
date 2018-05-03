//
//  TableViewController.swift
//  Werkstuk1_Jorick_De_Clercq
//
//  Created by DE CLERCQ Jorick (s) on 03/05/2018.
//  Copyright © 2018 DE CLERCQ Jorick (s). All rights reserved.
//

import UIKit
import MapKit

class TableViewController: UITableViewController {
    
    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // hier komen alle adressen die opgeslagen worden
        let adresJorick = Adress(Straat: "Sint Rochusstraat", Huisnummer: 33, Postcode: 1500, Gemeente: "HALLE")
        let adresMaike = Adress(Straat: "Biezewijde", Huisnummer: 5, Postcode: 1500, Gemeente: "HALLE")
        let adresYolan = Adress(Straat: "Brussel straat", Huisnummer: 0, Postcode: 1840, Gemeente: "LONDERZEEL")
        
        // hier definieert men de coordinaten waar de persoon zich bevindt
        let coordinaatJorick = CLLocationCoordinate2D(latitude: 50.731510, longitude: 4.240102)
        let coordinaatMaike = CLLocationCoordinate2D(latitude: 50.728718, longitude: 4.242363)
        let coordinaatYolan = CLLocationCoordinate2D(latitude: 50.999696, longitude: 4.300823)
        
        // hier schrijgt men de persoon weg in de Persoons klasse
        personen.append(Persoon(Naam: "De Clercq", Voornaam: "Jorick", Image: UIImage(named:"Jorick")!, Adres: adresJorick, Coordinaat: coordinaatJorick))
        personen.append(Persoon(Naam: "Meuris", Voornaam: "Maike", Image: UIImage(named:"Maike")!, Adres: adresMaike, Coordinaat: coordinaatMaike))
        personen.append(Persoon(Naam: "Christoria", Voornaam: "Yolan", Image: UIImage(named:"Yolan")!, Adres: adresYolan, Coordinaat: coordinaatYolan))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persoonCell", for: indexPath)

        // Configure the cell...
        let persoon = personen[indexPath.row]
        cell.textLabel?.text = persoon.voornaam
        cell.detailTextLabel?.text = persoon.naam
        cell.imageView?.image = persoon.image

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
