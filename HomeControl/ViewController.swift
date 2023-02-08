//
//  ViewController.swift
//  HomeControl
//
//  Created by Cesar  Perez Catalan on 09/01/23.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var animationView:LottieAnimationView?
    
    lazy var lblLogo: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.text = "Home Control"
        lbl.font = UIFont(name: "Chalkduster", size: 44)
        return lbl
    }()
    
    lazy var btnEntry: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.64, green: 0.58, blue: 0.85, alpha: 1.00).cgColor
        btn.layer.cornerRadius = 24
        btn.setTitle("GO!!", for: .normal)
        btn.titleLabel?.font = UIFont(name: "Chalkduster", size: 30)
        return btn
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupView()
    }
    
    func setupView(){
        view.addSubview(lblLogo)
        lblLogo.translatesAutoresizingMaskIntoConstraints = false
        lblLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        
        animationView = .init(name: "HomeControl")
        animationView?.contentMode = .scaleAspectFit
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 1
        
        view.addSubview(animationView!)
        animationView?.translatesAutoresizingMaskIntoConstraints = false
        animationView?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        animationView?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        animationView?.widthAnchor.constraint(equalToConstant: 500).isActive = true
        
        animationView!.play()
        
        view.addSubview(btnEntry)
        btnEntry.translatesAutoresizingMaskIntoConstraints = false
        btnEntry.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnEntry.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 130).isActive = true
        btnEntry.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        btnEntry.addTarget(self, action: #selector(goToHome), for: .touchUpInside)
        
    }
    
    func setGradientBackground(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.93, green: 0.92, blue: 0.88, alpha: 1.00).cgColor, UIColor.purple.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    @objc func goToHome(){
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
   }
}

