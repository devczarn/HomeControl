//
//  ViewProfileCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 07/02/23.
//

import UIKit
import Alamofire

class ViewProfileCustomCell: UITableViewCell {

    static let identifier = "ViewProfileCustomCell"
    
    lazy var viewContainer: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00).cgColor
        view.layer.cornerRadius = 14
        return view
    }()
    
    lazy var lblCategory: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "Helveticaneue-bold", size: 16)
        return label
    }()
    
    lazy var imgNext: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage(named: "Item_3")
        return img
    }()
    
    lazy var imgIcon: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.tintColor = .black
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        setupCell()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(category: String,image: String){
        lblCategory.text = category
        imgIcon.image = UIImage(systemName: image)
    }
    
    func setupCell(){
        
        contentView.addSubview(viewContainer)
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        viewContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40).isActive = true
        viewContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        viewContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -38).isActive = true
        viewContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -10).isActive = true
        
        contentView.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 40).isActive = true
        lblCategory.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
        contentView.addSubview(imgIcon)
        imgIcon.translatesAutoresizingMaskIntoConstraints = false
        imgIcon.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
        imgIcon.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
        contentView.addSubview(imgNext)
        imgNext.translatesAutoresizingMaskIntoConstraints = false
        imgNext.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imgNext.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imgNext.layer.cornerRadius = 12.5
        imgNext.leadingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant:-40).isActive = true
        imgNext.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
    }
}
