//
//  ProfileCategoriesCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 03/02/23.
//

import UIKit
import Alamofire

class ProfileCategoriesCustomCell: UITableViewCell {

    static let identifier = "ProfileCategoriesCustomCell"
    
    var tableView = UITableView()
    
    let categories = ["Centro de ayuda","Acerca de la app","Califica la app","Cerrar sesión"]
    
    let image = ["questionmark.circle","exclamationmark.circle","star","cursorarrow.click"]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        setupCell()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        contentView.addSubview(tableView)
        tableView.frame = CGRect(x: 0, y: 0, width: 300, height: 500)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(ViewProfileCustomCell.self, forCellReuseIdentifier: ViewProfileCustomCell.identifier)
        tableView.separatorStyle = .none
    }
}

extension ProfileCategoriesCustomCell: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewProfileCustomCell.identifier, for: indexPath) as? ViewProfileCustomCell else {
            return UITableViewCell()
        }
        
        let category = categories[indexPath.row]
        let image = image[indexPath.row]
        cell.configure(category: category,image: image )

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
