//
//  ViewController.swift
//  ExSymbolAnimation
//
//  Created by 김종권 on 2023/09/17.
//

import UIKit

class ViewController: UIViewController {
    private let stackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private let addButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus.app"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isSymbolAnimationEnabled = true
        return button
    }()
    private let slider = {
        let slider = UISlider()
        slider.minimumValueImage = UIImage(systemName: "tortoise")
        slider.maximumValueImage = UIImage(systemName: "hare")
        slider.minimumValue = 0
        slider.maximumValue = 300
        return slider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(addButton)
        stackView.addArrangedSubview(slider)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        NSLayoutConstraint.activate([
            slider.widthAnchor.constraint(equalToConstant: 300),
        ])
    }


}

