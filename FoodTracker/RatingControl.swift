//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Evgeny Zaritovskiy on 2016-12-25.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0

    //MARK: Initialization 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Actions
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = .red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            addArrangedSubview(button)
            ratingButtons.append(button)
        }
    }
    
}
