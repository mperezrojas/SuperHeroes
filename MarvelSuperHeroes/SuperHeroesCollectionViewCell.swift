//
//  SuperHerosCollectionViewCell.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 24/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit

class SuperHeroesCollectionViewCell: UICollectionViewCell {
    
     let imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        view.backgroundColor = UIColor(white: 0.95, alpha: 1)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.numberOfLines = 0
        label.font = UIFont(name: "AvengeanceHeroicAvengerItalic", size: 25)
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let bounds = contentView.bounds
        imageView.frame = bounds
        titleLabel.frame = CGRect(x: bounds.origin.x, y: bounds.origin.y + bounds.size.height - 50, width: bounds.size.width, height: CGFloat(50))
    }
    
}
