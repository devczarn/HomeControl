//
//  HomeViewController.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 09/01/23.
//

import Foundation
import UIKit
import Alamofire

class HomeViewController:UIViewController{
    
    var tableView = UITableView()
    var activeSection = 0
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        setupView()
    }

    func setupView(){
        
        title = "Inicio"
        configureNavigation()
        view.backgroundColor = UIColor(red: 0.93, green: 0.92, blue: 0.88, alpha: 1.00)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DataCustomCell.self, forCellReuseIdentifier: DataCustomCell.identifier)
        tableView.register(CategoriesCustomCell.self, forCellReuseIdentifier: CategoriesCustomCell.identifier)
        tableView.register(PopularCustomCell.self, forCellReuseIdentifier: PopularCustomCell.identifier)
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.allowsSelection = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
    }
    
    func configureNavigation()  {
        self.customizeNavigation()
       
        let attributes = [NSAttributedString.Key.foregroundColor:UIColor.black, NSAttributedString.Key.font:UIFont(name: "Arial-BoldMT", size: 20)]
        
        self.navigationController?.navigationBar.titleTextAttributes = attributes as [NSAttributedString.Key : Any]
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0.64, green: 0.58, blue: 0.85, alpha: 1.00)
    }
    
}

extension HomeViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if activeSection == 0 {
            activeSection = 1
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DataCustomCell.identifier, for: indexPath) as? DataCustomCell else { return UITableViewCell() }
            return cell
        } else if activeSection == 1 {
            activeSection = 2
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoriesCustomCell.identifier, for: indexPath) as? CategoriesCustomCell else { return UITableViewCell() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PopularCustomCell.identifier, for: indexPath) as? PopularCustomCell else { return UITableViewCell() }
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

}
