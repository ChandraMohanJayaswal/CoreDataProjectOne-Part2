//
//  ViewController.swift
//  CoreDataProjectOne
//
//  Created by Chandra Jayaswal on 26/12/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(PersistentStorage.shared.documentDirectory())
        let container = PersistentStorage.shared.persistentContainer
    }


}

