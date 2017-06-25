//
//  SuperHeroAPI.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SuperHeroesAPI: NSObject {

    fileprivate let apiString: String = "https://api.myjson.com/bins/bvyob"
    
    func getSuperHeros(_ completion: @escaping (_ result: JSON) -> ()) {
        
        Alamofire.request("\(apiString)").response { response in
                
            if let data = response.data {
                let superHeroes = JSON(data)
                completion(superHeroes)
            }
        }
    }
}
