//
//  UIViewController+Extension.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 04/02/23.
//

import Foundation
import UIKit

extension UIViewController{
    
    func showData(parentView: UIView, dataModel:GoalsModel){

        let containerView = UIView()
        let superContainerView = UIView()
        
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
            label.text = dataModel.category
            return label
        }()
        
        lazy var lblRoom: UILabel = {
            let label = UILabel()
            label.textColor = .white
            label.textAlignment = .left
            label.font = UIFont(name: "Arial-BoldMT", size: 20)
            label.text = dataModel.room
            return label
        }()
        
        lazy var lblDays: UILabel = {
            let label = UILabel()
            label.textColor = .white
            label.textAlignment = .left
            label.font = UIFont(name: "Arial-BoldMT", size: 20)
            label.text = dataModel.days
            return label
        }()
        
        lazy var lblHour: UILabel = {
            let label = UILabel()
            label.textColor = .white
            label.textAlignment = .left
            label.font = UIFont(name: "Arial-BoldMT", size: 20)
            label.text = dataModel.hour
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
        superContainerView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.50)
        containerView.backgroundColor = UIColor(red: 0.79, green: 0.69, blue: 0.99, alpha: 1.00)
        parentView.addSubview(superContainerView)
        superContainerView.frame = parentView.bounds
        superContainerView.addSubview(containerView)
        containerView.frame = CGRect(x: 0, y: 200, width: parentView.frame.width, height: parentView.frame.height)
        containerView.clipsToBounds = true
        viewGeneralContainer.clipsToBounds = true
        containerView.layer.cornerRadius = 30
        
        containerView.addSubview(viewGeneralContainer)
        viewGeneralContainer.translatesAutoresizingMaskIntoConstraints = false
        viewGeneralContainer.widthAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
        viewGeneralContainer.topAnchor.constraint(equalTo: containerView.topAnchor, constant: -500).isActive = true
        viewGeneralContainer.heightAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
        viewGeneralContainer.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -containerView.frame.height/2.0).isActive = true
        viewGeneralContainer.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        viewGeneralContainer.backgroundColor = .black
        viewGeneralContainer.layer.cornerRadius = CGFloat(containerView.frame.height/2.0)
        
        viewGeneralContainer.addSubview(imgBook)
        imgBook.translatesAutoresizingMaskIntoConstraints = false
        imgBook.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 220).isActive = true
        imgBook.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor, constant: 80).isActive = true
        
        viewGeneralContainer.addSubview(lblCategory)
        lblCategory.translatesAutoresizingMaskIntoConstraints = false
        lblCategory.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 150).isActive = true
        lblCategory.centerXAnchor.constraint(equalTo: viewGeneralContainer.centerXAnchor, constant: -80).isActive = true
        
        parentView.addSubview(lblRoom)
        lblRoom.translatesAutoresizingMaskIntoConstraints = false
        lblRoom.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 190).isActive = true
        lblRoom.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true

        viewGeneralContainer.addSubview(lblDays)
        lblDays.translatesAutoresizingMaskIntoConstraints = false
        lblDays.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 220).isActive = true
        lblDays.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true


        viewGeneralContainer.addSubview(lblHour)
        lblHour.translatesAutoresizingMaskIntoConstraints = false
        lblHour.centerYAnchor.constraint(equalTo: viewGeneralContainer.centerYAnchor, constant: 250).isActive = true
        lblHour.leadingAnchor.constraint(equalTo: lblCategory.leadingAnchor).isActive = true

        parentView.addSubview(btnBack)
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        btnBack.centerXAnchor.constraint(equalTo: parentView.centerXAnchor).isActive = true
        btnBack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        btnBack.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btnBack.addTarget(self, action: #selector(dissapperData), for: .touchUpInside)
    }
    
    @objc func dissapperData(){
        let lastView = view.subviews.last
        lastView?.removeFromSuperview()
        
        let lastView2 = view.subviews.last
        lastView2?.removeFromSuperview()
        
        let lastView3 = view.subviews.last
        lastView3?.removeFromSuperview()
    }
}
