//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Владислав Мокров on 27.11.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restorantNames = [
        "McDonald's", "Burger King", "KFC", "Mama Roma", "Italy", "MadEspresso",
        "Ronny", "Tarelka", "COCOCO BISTRO", "Sibaristica", "Bekitzer", "Dzamico",
        "Surf Coffee", "Bo", "Subzero"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

    // MARK: - Table view data source
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restorantNames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel?.text = restorantNames[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: restorantNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

/*

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
