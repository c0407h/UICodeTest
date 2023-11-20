//
//  ViewController.swift
//  UICodeTest
//
//  Created by Chung Wussup on 11/20/23.
//

import UIKit

class ViewController: UIViewController {
    //Code UI Test
    
    let emailTextFieldView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    
    func makeUI() {
        emailTextFieldView.backgroundColor = .gray
        
        view.addSubview(emailTextFieldView)
        
        
        //⭐️ .translatesAutoresizingMaskIntoConstraints -> 자동으로 잡아주는 오토레이아웃을 off 하는 것
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        //.isActive = true로 해줘야 적용됨
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        
        //height, width는 기준이 없기 때문에 constraint(equalToConstant:) 사용
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        emailTextFieldView.layer.cornerRadius = 20
        emailTextFieldView.layer.masksToBounds = true
    }


}

