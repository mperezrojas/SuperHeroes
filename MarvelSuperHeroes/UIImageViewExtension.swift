//
//  UIImageViewExtension.swift
//  MarvelSuperHeroes
//
//  Created by Miguel on 25/6/17.
//  Copyright © 2017 Miguel Pérez. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func downloadImage(fromURL urlString: String) {
        
        if let url = URL(string: urlString) {
            let queue = DispatchQueue(label: "download")
            queue.async(execute: {
                if let data = try? Data(contentsOf: url) {
                    let image = UIImage(data: data)
                    
                    DispatchQueue.main.async(execute: { [unowned self] in
                        self.image = image
                    })
                }
            })
        }
    }
}
    
    
