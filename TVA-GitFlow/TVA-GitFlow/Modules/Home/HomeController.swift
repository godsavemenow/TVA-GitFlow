//
//  HomeController.swift
//  CurrencyConverter
//
//  Created by Eduardo Lopes on 29/09/21.
//

import UIKit

final class HomeController: UIViewController {
    private let customView = HomeView()
    private let viewModel: HomeViewModel
    var currencyCode: String = "BRL"
    var newCurrencyCode: String = "USD"
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.controllerDelegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTargets()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func loadView() {
        super.loadView()
        self.view = customView
    }
    
    private func setTargets() {
        customView.currencyButton.addTarget(viewModel, action: #selector(viewModel.didTapCurrency(_:)), for: .touchUpInside)
    }
    
}

// MARK: - Extensions
extension HomeController: HomeControllerDelegate {
    func originUpdated(origin: Origin, title: String, currencyCode: String) {
        switch origin {
        case .currency:
            customView.currencyButton.setTitle(title, for: .normal)
            self.currencyCode = currencyCode
        case .newCurrency:
            return
        default:
            break
        }
    }
    
}
