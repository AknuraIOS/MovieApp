//
//  MovieViewModel.swift
//  MovieExample
//
//  Created by Акнур on 1/11/21.
//

import Foundation

class MovieViewModel{
    let title: String?
    
    init(movie: Results) {
        self.title = movie.title
    }
}
