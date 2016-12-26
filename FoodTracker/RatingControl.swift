//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Evgeny Zaritovskiy on 2016-12-25.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initialization 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        addArrangedSubview(button)
    }
    
}
