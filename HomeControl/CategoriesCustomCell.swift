//
//  CategoriesCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 15/01/23.
//

import UIKit
import Alamofire
import Lottie

class CategoriesCustomCell: UITableViewCell {

    static let identifier = "CategoriesCustomCell"
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var lblCategory: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Categorías"
        label.font = UIFont(name: "Arial-BoldMT", size: 24)
        return label
    }()
    
    lazy var btnFinance: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Finanzas", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    lazy var btnPhilosophy: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Filosofía", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    lazy var btnOptional: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 14
        btn.setTitle("Optativa", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        btn.setTitleColor(UIColor(red: 0.59, green: 0.04, blue: 0.20, alpha: 1.00), for: .normal)
        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        
        viewGeneralContainer.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.leadingAnchor.constraint(equalTo: viewGeneralContainer.leadingAnchor, constant: 10).isActive = true
        lblCategory.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 10).isActive = true
        
        viewGeneralContainer.addSubview(btnPhilosophy)
        btnPhilosophy.translatesAutoresizingMaskIntoConstraints = false
        btnPhilosophy.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor).isActive = true
        btnPhilosophy.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnPhilosophy.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnPhilosophy.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        viewGeneralContainer.addSubview(btnFinance)
        btnFinance.translatesAutoresizingMaskIntoConstraints = false
        btnFinance.trailingAnchor.constraint(equalTo: btnPhilosophy.leadingAnchor, constant: -10).isActive = true
        btnFinance.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnFinance.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnFinance.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        viewGeneralContainer.addSubview(btnOptional)
        btnOptional.translatesAutoresizingMaskIntoConstraints = false
        btnOptional.leadingAnchor.constraint(equalTo: btnPhilosophy.trailingAnchor, constant: 10).isActive = true
        btnOptional.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        btnOptional.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btnOptional.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
}
