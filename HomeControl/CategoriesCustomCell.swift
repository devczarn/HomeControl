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
    var delegate: HomeViewProtocool?
    
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
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToCategoriesInformation))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(tapGesture)

        return label
    }()
    
    lazy var btnFinance: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "Item_5")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToFinanceInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
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
    
    lazy var btnPhilosophy: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.00)
        img.image = UIImage(named: "Item_9")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToPhilosophyInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
    }()
    
    lazy var btnOptional: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "Item_8")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToOptionalInformation))
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
        
        viewGeneralContainer.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.leadingAnchor.constraint(equalTo: viewGeneralContainer.leadingAnchor, constant: 10).isActive = true
        lblCategory.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 10).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer2)
        backgroudlayer2.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer2.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor).isActive = true
        backgroudlayer2.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer2.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer2.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer2.layer.cornerRadius = 14
        
        viewGeneralContainer.addSubview(btnPhilosophy)
        btnPhilosophy.translatesAutoresizingMaskIntoConstraints = false
        btnPhilosophy.centerXAnchor.constraint(equalTo: backgroudlayer2.centerXAnchor).isActive = true
        btnPhilosophy.centerYAnchor.constraint(equalTo: backgroudlayer2.centerYAnchor).isActive = true
        btnPhilosophy.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnPhilosophy.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer)
        backgroudlayer.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer.trailingAnchor.constraint(equalTo: backgroudlayer2.leadingAnchor, constant: -10).isActive = true
        backgroudlayer.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer.layer.cornerRadius = 14
        
        backgroudlayer.addSubview(btnFinance)
        btnFinance.translatesAutoresizingMaskIntoConstraints = false
        btnFinance.centerXAnchor.constraint(equalTo: backgroudlayer.centerXAnchor).isActive = true
        btnFinance.centerYAnchor.constraint(equalTo: backgroudlayer.centerYAnchor).isActive = true
        btnFinance.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnFinance.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewGeneralContainer.addSubview(backgroudlayer3)
        backgroudlayer3.translatesAutoresizingMaskIntoConstraints = false
        backgroudlayer3.leadingAnchor.constraint(equalTo: backgroudlayer2.trailingAnchor, constant: 10).isActive = true
        backgroudlayer3.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 60).isActive = true
        backgroudlayer3.widthAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer3.heightAnchor.constraint(equalToConstant: 90).isActive = true
        backgroudlayer3.layer.cornerRadius = 14
        
        
        backgroudlayer3.addSubview(btnOptional)
        btnOptional.translatesAutoresizingMaskIntoConstraints = false
        btnOptional.centerXAnchor.constraint(equalTo: backgroudlayer3.centerXAnchor).isActive = true
        btnOptional.centerYAnchor.constraint(equalTo: backgroudlayer3.centerYAnchor).isActive = true
        btnOptional.widthAnchor.constraint(equalToConstant: 60).isActive = true
        btnOptional.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    @objc func goToFinanceInformation() {
        delegate?.btnFinance()
    }
    
    @objc func goToOptionalInformation() {
        delegate?.btnOptional()
    }
    
    @objc func goToPhilosophyInformation() {
        delegate?.btnPhilosophy()
    }
    
    @objc func goToCategoriesInformation() {
        delegate?.lblCategory()
    }
}
