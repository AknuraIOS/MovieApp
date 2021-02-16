//
//  HomePageViewController.swift
//  
//
//  Created by Акнур on 1/11/21.
//

import UIKit
struct saveData {
    static let title = ""
}
class HomePageViewController: UIViewController {
    var data: Results?
    
    
    let titleLabel: UILabel = {
           let label = UILabel()
           label.numberOfLines = 0
           label.textColor = UIColor.black
           label.font = UIFont.boldSystemFont(ofSize: 20.0)
           label.backgroundColor = .white
           return label
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 50, left: 20, bottom: 0, right: 20), size: .init(width: 180, height: 180))
    
    }
    

   

}
