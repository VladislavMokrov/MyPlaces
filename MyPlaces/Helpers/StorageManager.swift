//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Владислав Мокров on 03.12.2020.
//

import RealmSwift

let realm = try! Realm()

class  StorageManager{
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
