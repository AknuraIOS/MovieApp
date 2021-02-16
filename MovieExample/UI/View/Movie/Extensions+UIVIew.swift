//
//  Extensions+UIVIew.swift
//  MovieExample
//
//  Created by Акнур on 1/10/21.
//

import Foundation
import Kingfisher

extension UIImageView {
    func setImage(imgURL: String){
        self.kf.setImage(with: URL(string: imgURL))
    }
}
