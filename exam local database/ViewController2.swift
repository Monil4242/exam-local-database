//
//  ViewController2.swift
//  exam local database
//
//  Created by monil sojitra on 12/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tb: UITableView!
    var arr2 = sqlite.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.idLabel.text = arr2[indexPath.row].id.description
        cell.nameLabel.text = arr2[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

  
}
