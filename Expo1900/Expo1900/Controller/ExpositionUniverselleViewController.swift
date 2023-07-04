//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

final class ExpositionUniverselleViewController: UIViewController, Tapable {
    private let mainView: ExpositionUniverselleView = ExpositionUniverselleView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMainView()
        updateNavigationLabel()
        updateMainViewLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    private func configureMainView() {
        mainView.delegate = self
    }
    
    private func updateNavigationLabel() {
        navigationItem.title = "메인"
    }
    
    private func updateMainViewLabel() {
        guard let expositionUniverselle = decodeExpositionUniverselle() else {
            return
        }
        
        mainView.updateLabel(with: expositionUniverselle)
    }
    
    private func decodeExpositionUniverselle() -> ExpositionUniverselle? {
        var expositionUniverselle: ExpositionUniverselle?
        
        do {
            expositionUniverselle = try JSONDecoder().decode(ExpositionUniverselle.self, from: JSONFile.exposition.description)
        } catch NSDataAssetError.invalidDataAsset {
            let alert: UIAlertController = AlertController().configureAlert(errorName: NSDataAssetError.invalidDataAsset.localizedDescription)
            present(alert, animated: true)
        } catch {
            let alert: UIAlertController = AlertController().configureAlert(errorName: error.localizedDescription)
            present(alert, animated: true)
        }
        
        return expositionUniverselle
    }
    
    private func configureMainViewConstraint() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    @objc func touchUpExpositionItemListButton() {
        let expositionItemListViewController: ExpositionItemListViewController = ExpositionItemListViewController()
        navigationController?.pushViewController(expositionItemListViewController, animated: true)
    }
}
