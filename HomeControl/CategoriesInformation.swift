//
//  CategoriesInformation.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 03/02/23.
//

import Foundation
import UIKit

class CategoriesInformation: UIViewController {
    
    lazy var viewGeneralContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var imgBook: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.backgroundColor = .black
        img.image = UIImage(named: "Item_2")
        return img
    }()
    
    lazy var lblCategory: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial-BoldMT", size: 30)
        return label
    }()
    
    lazy var lblRoom: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        return label
    }()
    
    lazy var lblDays: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        return label
    }()
    
    lazy var lblHour: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        return label
    }()
    
    lazy var btnBack: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.42, green: 0.19, blue: 1.00, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 24
        btn.setTitle("Entendido", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Arial-BoldMT", size: 30)
        return btn
    }()
    
    
    init(category:String, room:String, days:String, hour:String) {
        super.init(nibName: nil, bundle: nil)
        
        lblCategory.text = category
        lblRoom.text = room
        lblDays.text = days
        lblHour.text = hour
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.79, green: 0.69, blue: 0.99, alpha: 1.00)
        setupView()
    }
    
    func setupView() {
        
        view.addSubview(viewGeneralContainer)
        viewGeneralContainer.translatesAutoresizingMaskIntoConstraints = false
        viewGeneralContainer.widthAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        viewGeneralContainer.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        viewGeneralContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -view.frame.height/2.0).isActive = true
        viewGeneralContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewGeneralContainer.backgroundColor = .black
        viewGeneralContainer.layer.cornerRadius = CGFloat(view.frame.height/2.0)
        
        
        viewGeneralContainer.addSubview(imgBook)
        imgBook.translatesAutoresizingMaskIntoConstraints = false
        imgBook.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 180).isActive = true
        imgBook.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor, constant: 80).isActive = true
        
        viewGeneralContainer.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 100).isActive = true
        lblCategory.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor, constant: -80).isActive = true
        

        view.addSubview(lblRoom)
        lblRoom.translatesAutoresizingMaskIntoConstraints = false
        lblRoom.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 140).isActive = true
        lblRoom.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true

        viewGeneralContainer.addSubview(lblDays)
        lblDays.translatesAutoresizingMaskIntoConstraints = false
        lblDays.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 170).isActive = true
        lblDays.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true


        viewGeneralContainer.addSubview(lblHour)
        lblHour.translatesAutoresizingMaskIntoConstraints = false
        lblHour.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 200).isActive = true
        lblHour.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true

        view.addSubview(btnBack)
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnBack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 130).isActive = true
        btnBack.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        btnBack.addTarget(self, action: #selector(dissappear), for: .touchUpInside)
    }
    
    @objc func dissappear(){
        self.dismiss(animated: true)
    }
}

