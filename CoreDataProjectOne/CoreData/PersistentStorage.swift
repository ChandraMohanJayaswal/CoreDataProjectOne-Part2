//
//  PersistentStorage.swift
//  CoreDataProjectOne
//
//  Created by Chandra Jayaswal on 26/12/2023.
//

import Foundation
import CoreData

final class PersistentStorage {
    
    private init () {
        
    }
    
    static let shared = PersistentStorage()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataProjectOne")
        container.loadPersistentStores { (description:NSPersistentStoreDescription, error: Error?) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        }
        print("Creating Database")
        return container
    }()
    
    func documentDirectory() -> String {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls[urls.count -  1] as URL
        return url.absoluteString
    }
}
