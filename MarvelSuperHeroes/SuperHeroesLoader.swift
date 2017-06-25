//
//  SuperHeroesLoader.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import Foundation
import SwiftyJSON

class SuperHeroesLoader {
    
    
    
    func getSuperHeroes (_ completion: @escaping (_ result: [SuperHero]) -> ()) {
        
        var superHeroes = [SuperHero]()
        SuperHeroesAPI().getSuperHeros { (superHeroesJson) in
            
            for (superHeroJson):(String, JSON) in superHeroesJson["superheroes"] {
                var name = ""
                var photo = ""
                var realName = ""
                var height = ""
                var power = ""
                var abilities = ""
                var groups = ""
                
                if let superHeroName = superHeroJson.1["name"].string {
                    name = superHeroName
                }
                
                if let superHeroPhoto = superHeroJson.1["photo"].string {
                    photo = superHeroPhoto
                }
                
                if let superHeroRealName = superHeroJson.1["realName"].string {
                    realName = superHeroRealName
                }
                
                if let superHeroHeight = superHeroJson.1["height"].string {
                    height = superHeroHeight
                }
                
                if let superHeroPower = superHeroJson.1["power"].string {
                    power = superHeroPower
                }
                
                if let superHeroAbilities = superHeroJson.1["abilities"].string {
                    abilities = superHeroAbilities
                }
                
                if let superHeroGroups = superHeroJson.1["groups"].string {
                    groups = superHeroGroups
                }
                
                
                let superHero = SuperHero(identifier: superHeroJson.0, photo: photo, name: name, realName: realName, height: height, power: power, abilities: abilities, groups: groups)
                superHeroes.append(superHero)
            }
            
            completion(superHeroes)
        }
    }
}
