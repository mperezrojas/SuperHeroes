//
//  SuperHerosSectionController.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit
import IGListKit

final class SuperHeroesSectionController: ListSectionController {
    
    var superHero: SuperHero!
    
    // MARK: ListSectionController
    
   override func numberOfItems() -> Int {
    
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        
        let width = collectionContext?.containerSize.width
        let height = (collectionContext?.containerSize.height)! / 3
        
        return CGSize(width: width!, height: height)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        
        let cellClass: AnyClass =  SuperHeroesCollectionViewCell.self
        let cell = collectionContext!.dequeueReusableCell(of: cellClass, for: self, at: index)
        
        if let cell = cell as? SuperHeroesCollectionViewCell {
            cell.titleLabel.text = self.superHero.name
            cell.imageView.downloadImage(fromURL: self.superHero.photo)
        }
        
        return cell
    }
    
    override func didUpdate(to object: Any) {
        
        superHero = object as? SuperHero
    }
    
    override func didSelectItem(at index: Int) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyboard.instantiateViewController(withIdentifier: "SuperHeroDetailViewController") as? SuperHeroDetailViewController {
            controller.superHero = self.superHero
            viewController?.present(controller, animated: true, completion: nil)
        }
    }
}
