//
//  ViewController.swift
//  Simpson Book
//
//  Created by Mehmet Doğukan Sevinç on 24.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    var chosenSimpson = Simpson()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource  = self
        
            //Simpson Class
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.Image = UIImage(named: "bart.png")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Nuclear Inspector"
        homer.Image = UIImage(named: "homer.png")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Student"
        lisa.Image = UIImage(named: "lisa.png")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.occupation = "Singer"
        maggie.Image = UIImage(named: "maggie.png")!
        
        let marge = Simpson()
        marge.name = "Homer Simpson"
        marge.occupation = "Housewife"
        marge.Image = UIImage(named: "marge.png")!
        
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = self.chosenSimpson
        
    }


}

