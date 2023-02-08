//
//  DataCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 09/01/23.
//

import UIKit
import Alamofire

class DataCustomCell: UITableViewCell {

    static let identifier = "DataCustomCell"
    var delegate: HomeViewProtocool?
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 30
        return view
    }()
    
    lazy var lblHi: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Hola"
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        return label
    }()
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Mauricio"
        label.font = UIFont(name: "Arial", size: 20)
        return label
    }()
    
    lazy var lblLastSession: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Última sesión"
        label.font = UIFont(name: "Arial", size: 12)
        return label
    }()
    
    lazy var lblDay: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Hace 9 días"
        label.font = UIFont(name: "Arial", size: 20)
        return label
    }()
    
    lazy var lblLv: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.text = "Nivel: 9"
        label.font = UIFont(name: "Arial", size: 20)
        return label
    }()
    
    lazy var avatar: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = .white
        img.image = UIImage(named: "Item_1")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToProfileInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
    }()
    
    lazy var imgNotification: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.backgroundColor = .white
        img.image = UIImage(named: "Item_4")
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.goToNotificationInformation))
        img.addGestureRecognizer(tapGR)
        img.isUserInteractionEnabled = true
        return img
    }()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatar.image = nil
        imgNotification.image = nil
        
    }
    
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
        viewGeneralContainer.frame = contentView.bounds
        viewGeneralContainer.translatesAutoresizingMaskIntoConstraints = false
        viewGeneralContainer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        viewGeneralContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        viewGeneralContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -40).isActive = true
        viewGeneralContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -32).isActive = true
         
        _ = setGradientBackground(container: viewGeneralContainer)
        
        
        viewGeneralContainer.addSubview(avatar)
        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.leadingAnchor.constraint(equalTo: viewGeneralContainer.leadingAnchor, constant: 15).isActive = true
        avatar.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 15).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 80).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 80).isActive = true
        avatar.layer.cornerRadius = 40
        
        viewGeneralContainer.addSubview(imgNotification)
        imgNotification.translatesAutoresizingMaskIntoConstraints = false
        imgNotification.trailingAnchor.constraint(equalTo: viewGeneralContainer.trailingAnchor, constant: -20).isActive = true
        imgNotification.topAnchor.constraint(equalTo: viewGeneralContainer.topAnchor, constant: 20).isActive = true
        imgNotification.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imgNotification.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgNotification.layer.cornerRadius = 25
        
        viewGeneralContainer.addSubview(lblHi)
        lblHi.translatesAutoresizingMaskIntoConstraints = false
        lblHi.topAnchor.constraint(equalTo: avatar.topAnchor, constant: 25).isActive = true
        lblHi.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10).isActive = true
        
        viewGeneralContainer.addSubview(lblName)
        lblName.translatesAutoresizingMaskIntoConstraints = false
        lblName.topAnchor.constraint(equalTo: lblHi.bottomAnchor).isActive = true
        lblName.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 10).isActive = true
        
        viewGeneralContainer.addSubview(lblLv)
        lblLv.translatesAutoresizingMaskIntoConstraints = false
        lblLv.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 25).isActive = true
        lblLv.leadingAnchor.constraint(equalTo: avatar.leadingAnchor, constant: 20).isActive = true
        
        viewGeneralContainer.addSubview(lblDay)
        lblDay.translatesAutoresizingMaskIntoConstraints = false
        lblDay.topAnchor.constraint(equalTo: lblLv.topAnchor).isActive = true
        lblDay.trailingAnchor.constraint(equalTo: imgNotification.trailingAnchor).isActive = true
        
        viewGeneralContainer.addSubview(lblLastSession)
        lblLastSession.translatesAutoresizingMaskIntoConstraints = false
        lblLastSession.topAnchor.constraint(equalTo: lblDay.topAnchor, constant: -15).isActive = true
        lblLastSession.leadingAnchor.constraint(equalTo: lblDay.leadingAnchor).isActive = true
    }
    
    @objc func goToProfileInformation() {
        delegate?.avatar()
    }
    
    @objc func goToNotificationInformation() {
        delegate?.imgNotification()
    }
    
    func setGradientBackground(container: UIView) -> CAGradientLayer{
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: (container.frame.width * 1.1), height: 170)
        gradientLayer.colors = [UIColor(red: 0.79, green: 0.69, blue: 0.99, alpha: 1.00).cgColor,
                                UIColor(red: 0.42, green: 0.19, blue: 1.00, alpha: 1.00).cgColor]
        gradientLayer.locations = [0.0, 1.0]
        container.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.cornerRadius = 30
        return gradientLayer
    }
}
