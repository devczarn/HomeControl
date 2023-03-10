//
//  ViewCategories.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 24/01/23.
//

import Foundation
import UIKit

class ViewCategories: UIViewController {
    
    let categories = ["Programación","Diseño UX/UI","Finanzas","Filosofía","Optativa"]
    
    let rooms = ["A-2","F-2","L-2","B-12","H-5"]
    
    let days = ["L, M, X, J, V","L, V","M, V","X","J, V"]
    
    let hours = ["03:00 pm","12:00 pm","07:00 am","01:00 pm","02:00 pm"]
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        
        title = "Categorías"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(ViewCategoriesCustomCell.self, forCellReuseIdentifier: ViewCategoriesCustomCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.separatorStyle = .none
    }
}

extension ViewCategories:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewCategoriesCustomCell.identifier, for: indexPath) as? ViewCategoriesCustomCell else {
            return UITableViewCell()
        }
        
        let category = categories[indexPath.row]
        let room = rooms[indexPath.row]
        cell.configure(category: category,room: room )

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.showData(parentView: self.view, dataModel: GoalsModel(category: categories[indexPath.row], room: rooms[indexPath.row], hour:hours[indexPath.row], days: days[indexPath.row]))

    }

}

