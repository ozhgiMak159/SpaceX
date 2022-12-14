//
//  SettingsView.swift
//  SpaceX
//
//  Created by Maksim  on 10.09.2022.
//

import UIKit

final class SettingsView: UIView {
    
    // MARK: - Subviews
    lazy var stackView = UIStackView()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews(with: 4)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func configureViews(with number: Int) {
        
        var arrangedSubviews: [UIView] = []
        for _ in 1...number {
            arrangedSubviews.append(SettingsItemView())
        }
        
        stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = SettingsViewSizeConstants.spacingItems
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackView)
        
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let stackViewConstraints = [
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}
