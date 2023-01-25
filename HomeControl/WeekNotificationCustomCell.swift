//
//  WeekNotificationCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 24/01/23.
//

import UIKit
import Alamofire

class WeekNotificationCustomCell: UITableViewCell {

    static let identifier = "WeekNotificationCustomCell"
    
    var msgWeek = [String]()
    var timeWeek = [String]()
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var lblPopular: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.text = "3"
        label.font = UIFont(name: "Arial-BoldMT", size: 24)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(msgWeek: [String],timeWeek: [String]){
        self.msgWeek = msgWeek
        self.timeWeek = timeWeek
    }
    
    func setupCell(){
        
        contentView.addSubview(viewGeneralContainer)
        viewGeneralContainer.translatesAutoresizingMaskIntoConstraints = false
        viewGeneralContainer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        viewGeneralContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        viewGeneralContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -40).isActive = true
        viewGeneralContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -32).isActive = true
        
        viewGeneralContainer.addSubview(lblPopular)
        lblPopular.translatesAutoresizingMaskIntoConstraints = false
        lblPopular.leadingAnchor.constraint(equalTo: viewGeneralContainer.leadingAnchor, constant: 10).isActive = true
        lblPopular.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 10).isActive = true
        
        
       
    }
    
}

