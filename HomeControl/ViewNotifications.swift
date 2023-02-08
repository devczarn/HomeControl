//
//  ViewNotifications.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 24/01/23.
//

import Foundation
import UIKit
import Alamofire

class ViewNotifications:UIViewController{
    
    var tableView = UITableView()
    var activeSection = 0
    var activeSection1 = 0
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        setupView()
    }

    func setupView(){
        
        title = "Avisos"
        view.backgroundColor = UIColor(red: 0.93, green: 0.92, blue: 0.88, alpha: 1.00)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NewsNotificationCustomCell.self, forCellReuseIdentifier: NewsNotificationCustomCell.identifier)
        tableView.register(TodayNotificationCustomCell.self, forCellReuseIdentifier: TodayNotificationCustomCell.identifier)
        tableView.register(WeekNotificationCustomCell.self, forCellReuseIdentifier: WeekNotificationCustomCell.identifier)

        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.allowsSelection = false
        tableView.separatorStyle = .none
    }
    
}

extension ViewNotifications:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if activeSection == 0 {
            activeSection = 1
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsNotificationCustomCell.identifier, for: indexPath) as? NewsNotificationCustomCell else { return UITableViewCell() }
            return cell
        } else if activeSection == 1 {
            activeSection = 2
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TodayNotificationCustomCell.identifier, for: indexPath) as? TodayNotificationCustomCell else { return UITableViewCell() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: WeekNotificationCustomCell.identifier, for: indexPath) as? WeekNotificationCustomCell else { return UITableViewCell() }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
           return "Nuevas"
        } else if section == 1 {
           return "Hoy"
        } else {
            return "Esta semana"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.section == 0 {
            
            return 120
        } else if indexPath.section == 1 {
            
            return 200
        } else {
            return 300
        }
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

}
