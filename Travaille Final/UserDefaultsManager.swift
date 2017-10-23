//
//  UserDefaultsManager.swift
//  Travaille Final
//
//  Created by eleves on 2017-10-18.
//  Copyright © 2017 eleves. All rights reserved.
//

//---------------------------------------

import Foundation

//---------------------------------------
class UserDefaultsManager {
    
    //---------------------------------------
    func doesKeyExist(theKey: String) -> Bool {
        if UserDefaults.standard.object(forKey: theKey) == nil {
            return false
        }
        return true
    }
    
    //---------------------------------------
    func setKey(theValue: AnyObject, theKey: String) {
        UserDefaults.standard.set(theValue, forKey: theKey)
    }
    
    //---------------------------------------
    func removeKey (theKey: String) {
        UserDefaults.standard.removeObject(forKey: theKey)
    }
    
    //---------------------------------------
    func getValue(theKey: String) -> AnyObject {
        return UserDefaults.standard.object(forKey: theKey) as AnyObject
    }
}
