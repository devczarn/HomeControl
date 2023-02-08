//
//  ProfileController.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 03/02/23.
//

import Foundation
import UIKit
import Alamofire

class ProfileController:UIViewController{
    
    var tableView = UITableView()
    var activeSection = 0

    override func viewDidLoad() {
      super.viewDidLoad()
        
        setupView()
    }

    func setupView(){
        
        title = "Perfil"
        view.backgroundColor = UIColor(red: 0.93, green: 0.92, blue: 0.88, alpha: 1.00)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ProfileCustomCell.self, forCellReuseIdentifier: ProfileCustomCell.identifier)
        tableView.register(ProfileCategoriesCustomCell.self, forCellReuseIdentifier: ProfileCategoriesCustomCell.identifier)

        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
    }
    
}

extension ProfileController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if activeSection == 0 {
            activeSection = 1
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCustomCell.identifier, for: indexPath) as? ProfileCustomCell else { return UITableViewCell() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCategoriesCustomCell.identifier, for: indexPath) as? ProfileCategoriesCustomCell else { return UITableViewCell() }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

}
