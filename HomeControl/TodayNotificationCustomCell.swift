//
//  TodayNotificationCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 07/02/23.
//

import UIKit
import Alamofire

class TodayNotificationCustomCell: UITableViewCell {

    static let identifier = "TodayNotificationCustomCell"
    
    var tableView = UITableView()
    
    let titulo = ["Revisa tu horario y no pierdas clases.","Cafeteria abierta desde las 06:30 am.","No olvides que tu app es tu acceso al campus"]
    let subTitulo = ["Hace 3 hrs.","Hace 4 hrs.","Hace 6 hrs."]
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupCell()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        
        tableView.delegate = self
        tableView.dataSource = self
        contentView.addSubview(tableView)
        tableView.frame = CGRect(x: 0, y: 0, width: 350, height: 250)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(ViewNotificationCustomCell.self, forCellReuseIdentifier: ViewNotificationCustomCell.identifier)
        tableView.separatorStyle = .singleLine
    }
}

extension TodayNotificationCustomCell: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titulo.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ViewNotificationCustomCell.identifier, for: indexPath) as? ViewNotificationCustomCell else {
            return UITableViewCell()
        }
        let titulo = titulo[indexPath.row]
        let subTitulo = subTitulo[indexPath.row]
        cell.configure(titulo: titulo, subtitulo: subTitulo)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}

