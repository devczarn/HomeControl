//
//  PopularCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 15/01/23.
//

import UIKit
import Alamofire

class PopularCustomCell: UITableViewCell {

    static let identifier = "CustomCell"
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
       // view.layer.backgroundColor = UIColor.blue.cgColor
        return view
    }()
    
    lazy var lblPopular: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Más popular"
        label.font = UIFont(name: "Arial-BoldMT", size: 24)
        return label
    }()
    
    lazy var btnSports: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Deportes", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    lazy var btnComedy: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Comedia", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    lazy var btnGamers: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Gamers", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //contentView.backgroundColor = .purple
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        
        viewGeneralContainer.addSubview(btnComedy)
        btnComedy.translatesAutoresizingMaskIntoConstraints = false
        btnComedy.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor).isActive = true
        btnComedy.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnComedy.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnComedy.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        viewGeneralContainer.addSubview(btnSports)
        btnSports.translatesAutoresizingMaskIntoConstraints = false
        btnSports.trailingAnchor.constraint(equalTo: btnComedy.leadingAnchor, constant: -10).isActive = true
        btnSports.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnSports.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnSports.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        viewGeneralContainer.addSubview(btnGamers)
        btnGamers.translatesAutoresizingMaskIntoConstraints = false
        btnGamers.leadingAnchor.constraint(equalTo: btnComedy.trailingAnchor, constant: 10).isActive = true
        btnGamers.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnGamers.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnGamers.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
}

