//
//  PopularCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 15/01/23.
//

import UIKit
import Alamofire

class PopularCustomCell: UITableViewCell {

    static let identifier = "PopularCustomCell"
    var delegate: HomeViewProtocool?
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
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
    
    lazy var backgroudlayer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    lazy var backgroudlayer2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    lazy var backgroudlayer3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        return view
    }()
    
    lazy var btnSports: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        img.image = UIImage(named: "Item_10")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToSportsInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
    }()
    
    lazy var btnComedy: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        img.image = UIImage(named: "Item_7")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToComedyInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
    }()
    
    lazy var btnGamers: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        img.image = UIImage(named: "Item_6")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToGamersInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
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
        
        viewGeneralContainer.addSubview(lblPopular)
        lblPopular.translatesAutoresizingMaskIntoConstraints = false
        lblPopular.leadingAnchor.constraint(equalTo: viewGeneralContainer.leadingAnchor, constant: 10).isActive = true
        lblPopular.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 10).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer2)
        backgroudlayer2.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer2.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor).isActive = true
        backgroudlayer2.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer2.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer2.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer2.layer.cornerRadius = 14
        
        backgroudlayer2.addSubview(btnComedy)
        btnComedy.translatesAutoresizingMaskIntoConstraints = false
        btnComedy.centerXAnchor.constraint(equalTo: backgroudlayer2.centerXAnchor).isActive = true
        btnComedy.centerYAnchor.constraint(equalTo: backgroudlayer2.centerYAnchor).isActive = true
        btnComedy.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnComedy.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer)
        backgroudlayer.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer.trailingAnchor.constraint(equalTo: backgroudlayer2.leadingAnchor, constant: -10).isActive = true
        backgroudlayer.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer.layer.cornerRadius = 14
        
        backgroudlayer.addSubview(btnSports)
        btnSports.translatesAutoresizingMaskIntoConstraints = false
        btnSports.centerXAnchor.constraint(equalTo: backgroudlayer.centerXAnchor).isActive = true
        btnSports.centerYAnchor.constraint(equalTo: backgroudlayer.centerYAnchor).isActive = true
        btnSports.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnSports.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer3)
        backgroudlayer3.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer3.leadingAnchor.constraint(equalTo: backgroudlayer2.trailingAnchor, constant: 10).isActive = true
        backgroudlayer3.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer3.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer3.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer3.layer.cornerRadius = 14
        
        backgroudlayer3.addSubview(btnGamers)
        btnGamers.translatesAutoresizingMaskIntoConstraints = false
        btnGamers.centerXAnchor.constraint(equalTo: backgroudlayer3.centerXAnchor).isActive = true
        btnGamers.centerYAnchor.constraint(equalTo: backgroudlayer3.centerYAnchor).isActive = true
        btnGamers.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnGamers.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    @objc func goToSportsInformation() {
        delegate?.btnSports()
    }
    
    @objc func goToComedyInformation() {
        delegate?.btnComedy()
    }
    
    @objc func goToGamersInformation() {
        delegate?.btnGamers()
    }
    
}



