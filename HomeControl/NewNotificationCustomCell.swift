//
//  NewNotificationCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 24/01/23.
//

import UIKit
import Alamofire

class NewNotificationCustomCell: UITableViewCell {

    static let identifier = "NewNotificationCustomCell"
    
    var msgNews = [String]()
    var timeNews = [String]()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(msgNews: [String],timeNews: [String]){
        self.msgNews = msgNews
        self.timeNews = timeNews
    }
    
    func setupCell(){
        
        tableView.backgroundColor = .red
        tableView.delegate = self
        tableView.dataSource = self
        contentView.addSubview(tableView)
        
        tableView.frame = contentView.bounds
        tableView.separatorStyle = .none
        
    }
    
}

extension NewNotificationCustomCell:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let lblText = UILabel()
        let lblTime = UILabel()
        let viewContainer = UIView()
        
        lblText.textColor = .black
        lblText.font = UIFont(name: "Helveticaneue-bold", size: 12)
        
        lblTime.textColor = .black
        lblTime.font = UIFont(name: "Helveticaneue-bold", size: 10)
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        lblText.text = msgNews[indexPath.row]
        lblTime.text = timeNews[indexPath.row]
        
        
        viewContainer.addSubview(lblTime)
    
        cell.addSubview(viewContainer)
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        viewContainer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        viewContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        viewContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -32).isActive = true
        viewContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -8).isActive = true
        
        viewContainer.addSubview(lblText)
        lblText.translatesAutoresizingMaskIntoConstraints = false
        lblText.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
        lblText.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}



