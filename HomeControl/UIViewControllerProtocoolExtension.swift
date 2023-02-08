//
//  UIViewControllerProtocoolExtension.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 03/02/23.
//

import Foundation

extension HomeViewController {
   
    func btnFinance() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Finanzas", room:"L-2", hour:"08:00 am", days:"L, X, V"))
    }
    
    func btnPhilosophy() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Filosofía", room:"B-12", hour:"09:00 am", days:"M, J"))
    }
    
    func btnOptional() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Optativa", room:"H-5", hour:"11:00 am", days:"M, X, J"))
    }
    
    func lblCategory() {
        let vc = ViewCategories()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func btnSports() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Deportes", room:"Campo-1", hour:"08:00 am", days:"Sabado"))
    }
    
    func btnComedy() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Comedia", room:"Teatro-1", hour:"11:00 am", days:"Sabado"))
    }
    
    func btnGamers() {
        self.showData(parentView: self.view, dataModel: GoalsModel(category:"Gamers", room:"Campo-2", hour:"01:00 pm", days:"Domingo"))
    }
    
    func avatar() {
        let vc = ProfileController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func imgNotification() {
        let vc = ViewNotifications()
        navigationController?.pushViewController(vc, animated: true)
    }
}
