//
//  ViewController.swift
//  iOSDay4UserDefaultExample
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
//to delete, no need to fetch 
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        lblName.text = ""
    }

    @IBAction func btnSave(_ sender: UIButton)
    {
        UserDefaults.standard.set(txtName.text, forKey: "name")
        
    }
    
    @IBAction func btnFetch(_ sender: UIButton)
    {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        
        lblName.text = name
    }

}

