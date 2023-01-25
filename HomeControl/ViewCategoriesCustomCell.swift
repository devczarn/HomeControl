//
//  ViewCategoriesCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 24/01/23.
//

import UIKit
import Alamofire

class ViewCategoriesCustomCell: UITableViewCell {

    static let identifier = "ViewCategoriesCustomCell"
    
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
        label.font = UIFont(name: "Helveticaneue-bold", size: 24)
        return label
    }()
    
    lazy var lblRoom: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "Helveticaneue", size: 12)
        return label
    }()
    
    lazy var imgNext: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.backgroundColor = UIColor(red: 0.79, green: 0.69, blue: 0.99, alpha: 1.00)
        img.image = UIImage(named: "arrow-right")
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
    
    func configure(category: String,room: String){
        lblCategory.text = category
        lblRoom.text = "Aula: \(room)"
    }
    
    func setupCell(){
        
        contentView.addSubview(viewContainer)
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        viewContainer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        viewContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        viewContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -32).isActive = true
        viewContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -8).isActive = true
        
        contentView.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
        lblCategory.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
        contentView.addSubview(lblRoom)
        lblRoom.translatesAutoresizingMaskIntoConstraints = false
        lblRoom.leadingAnchor.constraint(equalTo: viewContainer.leadingAnchor, constant: 10).isActive = true
        lblRoom.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor, constant: 20).isActive = true
        
        contentView.addSubview(imgNext)
        imgNext.translatesAutoresizingMaskIntoConstraints = false
        imgNext.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imgNext.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imgNext.layer.cornerRadius = 20.00
        imgNext.leadingAnchor.constraint(equalTo: viewContainer.trailingAnchor, constant:-80).isActive = true
        imgNext.centerYAnchor.constraint(equalTo: viewContainer.centerYAnchor).isActive = true
        
    }
}
