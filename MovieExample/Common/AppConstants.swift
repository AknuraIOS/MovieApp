//
//  AppConstants.swift
//  MovieExample
//
//  Created by Акнур on 13.12.2020.
//

import Foundation
import UIKit

struct AppConstants {
   static let movieURL : String = "https://api.themoviedb.org/3/discover/movie?api_key="
   static let key      : String = "210e2b075f370d9cf11509de665a1272"
   static let baseURL  : String = AppConstants.movieURL + AppConstants.key
}
