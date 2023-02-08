//
//  ProfileCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 03/02/23.
//

import UIKit
import Alamofire

class ProfileCustomCell: UITableViewCell {

    static let identifier = "ProfileCustomCell"
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.text = "Mauricio"
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        return label
    }()
    
    lazy var lblEmail: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.text = "m.vega@campus.com.mx"
        label.font = UIFont(name: "Arial", size: 12)
        return label
    }()
    
    lazy var avatar: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = .white
        img.image = UIImage(named: "Item_1")
        return img
    }()
    
    lazy var backgroudlayer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    lazy var backgroudlayer2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatar.image = nil
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(){
        
        contentView.addSubview(backgroudlayer)
        backgroudlayer.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        backgroudlayer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -40).isActive = true
        backgroudlayer.widthAnchor.constraint(equalToConstant: 180).isActive = true
        backgroudlayer.heightAnchor.constraint(equalToConstant: 180).isActive = true
        backgroudlayer.layer.cornerRadius = 90
        
        backgroudlayer.addSubview(backgroudlayer2)
        backgroudlayer2.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer2.centerXAnchor.constraint(equalTo: backgroudlayer.centerXAnchor).isActive = true
        backgroudlayer2.centerYAnchor.constraint(equalTo: backgroudlayer.centerYAnchor).isActive = true
        backgroudlayer2.widthAnchor.constraint(equalToConstant: 175).isActive = true
        backgroudlayer2.heightAnchor.constraint(equalToConstant: 175).isActive = true
        backgroudlayer2.layer.cornerRadius = 87.5
        
        backgroudlayer2.addSubview(avatar)
        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.centerXAnchor.constraint(equalTo: backgroudlayer2.centerXAnchor).isActive = true
        avatar.centerYAnchor.constraint(equalTo: backgroudlayer2.centerYAnchor).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 160).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 160).isActive = true
        avatar.layer.cornerRadius = 80
        
        contentView.addSubview(lblName)
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        lblName.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 90).isActive = true
        
        contentView.addSubview(lblEmail)
        lblEmail.translatesAutoresizingMaskIntoConstraints = false
        lblEmail.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        lblEmail.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 110).isActive = true
    }
}
