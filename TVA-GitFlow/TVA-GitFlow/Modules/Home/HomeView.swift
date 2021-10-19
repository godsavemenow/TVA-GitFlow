//
//  HomeView.swift
//  CurrencyConverter
//
//  Created by Eduardo Lopes on 29/09/21.
//

import UIKit

final class HomeView: UIView {
    
    lazy var titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.font = lbl.font.withSize(32)
        lbl.text = "Listinha"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    lazy var currencyButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Abrir Listinha", for: .normal)
        btn.contentHorizontalAlignment = .center
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 10
        btn.backgroundColor = .systemGray5
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()
    
    init() {
        super.init(frame: .zero)
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - View Configurate Moethods
extension HomeView: ViewConfiguration {
    func buildViewHierarchy() {
        addSubViews([titleLabel, currencyButton])
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: topAnchor, constant: 96),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            
            currencyButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            currencyButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            currencyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
        ])
    }
    
    func configureViews() {
        backgroundColor = .white
    }
    
}
