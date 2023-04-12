//
//  ViewController.swift
//  exam local database
//
//  Created by monil sojitra on 12/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        sqlite.createFile()
        
    }

    @IBAction func addDataButtonAction(_ sender: UIButton) {
        if let x = t1.text , let y = Int(x){
            sqlite.addData(name: t2.text!, id: y)
        }
    }
    
    @IBAction func deleteButtonAction(_ sender: UIButton) {
        if let x = t1.text , let y = Int(x){
            sqlite.deleteData(name: t2.text!, id: y)
        }
    }
    
    @IBAction func getDataButtonAction(_ sender: UIButton) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(n, animated: true)
    }
}

