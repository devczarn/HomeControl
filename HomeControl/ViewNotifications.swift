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
    
    let msgNews = ["Bienvenido al ciclo escolar 2022-2023","Ahora: Evento de bienvenida"]
    let timeNews = ["Hace 10 mins.","Hace 30 mins."]
    
    let msgToday = ["Revisa tu horario y no pierdas clases.","Cafeteria abierta desde las 06:30 am.","No olvides que tu app es tu acceso al campus"]
    let timeToday = ["Hace 3 hrs.","Hace 4 hrs.","Hace 6 hrs."]
    
    let msgWeek = ["Prepárate para el regreso a clases","Tu horario está confirmado, échale un vistazo"]
    let timeWeek = ["Martes","Martes"]
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        setupView()
    }

    func setupView(){
        
        title = "Avisos"
        view.backgroundColor = UIColor(red: 0.93, green: 0.92, blue: 0.88, alpha: 1.00)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NewNotificationCustomCell.self, forCellReuseIdentifier: NewNotificationCustomCell.identifier)
        tableView.register(TodayNotificationCustomCell.self, forCellReuseIdentifier: TodayNotificationCustomCell.identifier)
        tableView.register(WeekNotificationCustomCell.self, forCellReuseIdentifier: WeekNotificationCustomCell.identifier)
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.allowsSelection = false
        tableView.backgroundColor = .white
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NewNotificationCustomCell.identifier, for: indexPath) as? NewNotificationCustomCell else { return UITableViewCell() }
            cell.configure(msgNews: msgNews, timeNews: timeNews)
            return cell
        } else if activeSection == 1 {
            activeSection = 2
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TodayNotificationCustomCell.identifier, for: indexPath) as? TodayNotificationCustomCell else { return UITableViewCell() }
            cell.configure(msgToday: msgToday, timeToday: timeToday)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: WeekNotificationCustomCell.identifier, for: indexPath) as? WeekNotificationCustomCell else { return UITableViewCell() }
            cell.configure(msgWeek: msgWeek, timeWeek: timeWeek)
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

}
