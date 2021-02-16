//
//  ViewController.swift
//  MovieExample
//
//  Created by Devnull on 13.12.2020.
//

import UIKit
import Kingfisher

class MovieViewController: UIViewController {

//    var recordsArray:[Int] = Array()
//    var limit = 20
//    let totalEnteries = 100

    
    lazy var movieTableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        return tv
    }()
    
    let movieCellID = "movieCellID"
    var arrayMovies : [Results] = [] // зачем
    var arrMovieVM = [MovieViewModel]()
    var movies = [Results]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
//        var index = 0
//                 while index < limit {
//                     recordsArray.append(index)
//                     index = index + 1
//                 }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadDataMovies()
    }
    
    private func setupTableView(){
        view.addSubview(movieTableView)
        movieTableView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 500, left: 10, bottom: 10, right: 10))
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.register(MovieTableViewCell.self, forCellReuseIdentifier: movieCellID)
    }
    
    func loadDataMovies() {
        MovieService.sharedInstance.getMovieData { [self] (movies) in //зачем
            self.arrayMovies = movies
            self.movieTableView.reloadData()
           
        } 
    }
    
}
