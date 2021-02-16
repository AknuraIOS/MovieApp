//
//  MovieTableViewDataSource.swift
//  MovieExample
//
//  Created by Devnull on 13.12.2020.
//

import UIKit

extension MovieViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCellID, for: indexPath) as! MovieTableViewCell
        cell.getData(arrayMovies[indexPath.item]) //зачем? getData деген функцияны шакырдык, Result сакталган arrayMovies шакырамыз
       DispatchQueue.main.async {
        cell.movieImages.setImage(imgURL: "https://image.tmdb.org/t/p/w500\(self.arrayMovies[indexPath.item].backdrop_path!)")
       }
        
        return cell
    }
    
}

extension MovieViewController: UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMovies.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return UITableView.automaticDimension
       }
    
       
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           let vc = HomePageViewController()
        let model = arrayMovies[indexPath.row]
           vc.titleLabel.text = model.title
           navigationController?.pushViewController(vc, animated: true)
           //print(model.backdrop_path)
       }

}

