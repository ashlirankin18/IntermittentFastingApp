//
//  DataController.swift
//  FastingTracker Watch App
//
//  Created by Ashli Rankin on 6/17/22.
//

import CoreData

final class DataController: ObservableObject {
    
    private let container = NSPersistentContainer(name: "FastModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    
}
