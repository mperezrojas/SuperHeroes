//
//  SuperHero.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import Foundation
import IGListKit

class SuperHero: ListDiffable {
    
    let identifier: String
    let photo: String
    let name: String
    let realName: String
    let height: String
    let power: String
    let abilities: String
    let groups: String
    
    init(identifier: String, photo: String, name: String, realName: String, height: String, power: String, abilities: String, groups: String) {
        
        self.identifier = identifier
        self.photo = photo
        self.name = name
        self.realName = realName
        self.height = height
        self.power = power
        self.abilities = abilities
        self.groups = groups
    }
    
    public func diffIdentifier() -> NSObjectProtocol {
     
        return identifier as NSObjectProtocol
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        
        if self === object {
            
            return true

        }
        
        return false
    }
    
}
