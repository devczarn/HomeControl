//
//  ViewNotificationCustomCell.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 07/02/23.
//

import UIKit
import Alamofire

class ViewNotificationCustomCell: UITableViewCell {

    static let identifier = "ViewNotificationCustomCell"
    
    lazy var lblTitulo: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "Helveticaneue-bold", size: 14)
        return label
    }()
    
    lazy var lblSuTitulo: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont(name: "Helveticaneue", size: 10)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupCell()
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(titulo: String,subtitulo: String){
        lblTitulo.text = titulo
        lblSuTitulo.text = subtitulo
    }
    
    func setupCell(){
        
        contentView.addSubview(lblTitulo)
        lblTitulo.translatesAutoresizingMaskIntoConstraints = false
        lblTitulo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        lblTitulo.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        contentView.addSubview(lblSuTitulo)
        lblSuTitulo.translatesAutoresizingMaskIntoConstraints = false
        lblSuTitulo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        lblSuTitulo.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 20).isActive = true
    }
}
