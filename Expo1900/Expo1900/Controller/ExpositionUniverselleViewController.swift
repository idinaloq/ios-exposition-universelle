//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

final class ExpositionUniverselleViewController: UIViewController {
    private var expositionUniverselle: ExpositionUniverselle?
    
    private let titleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 2
        
        return label
    }()
    
    private let visitorsLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textAlignment = .center
        
        return label
    }()
    
    private let locationLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textAlignment = .center
        
        return label
    }()
    
    private let durationLabel: UILabel = {
        let label: UILabel = UILabel()
        label.textAlignment = .center
        
        return label
    }()
    
    private let totalDescriptionLabel: UILabel = {
        let label: UILabel = UILabel()
        label.numberOfLines = 0
        
        return label
    }()
    
    private let posterImage: UIImageView = {
        let imageName: String = "poster"
        let image: UIImage? = UIImage(named: imageName)
        let imageView: UIImageView = UIImageView(image: image)
        
        return imageView
    }()
    
    private let leftItemImage: UIImageView = {
        let imageName: String = "flag"
        let image: UIImage? = UIImage(named: imageName)
        let imageView: UIImageView = UIImageView(image: image)
        
        return imageView
    }()
    
    private let rightItemImage: UIImageView = {
        let imageName: String = "flag"
        let image: UIImage? = UIImage(named: imageName)
        let imageView: UIImageView = UIImageView(image: image)
        
        return imageView
    }()
    
    private lazy var expositionItemListButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("한국의 출품작 보러가기", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(touchUpExpositionItemListButton), for: .touchUpInside)
        
        return button
    }()
    
    private let contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 8
        
        return stackView
    }()
    
    private let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    private let expositionUniverselleScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        decodeExpositionUniverselle()
        updateLabel()
        configureView()
        configureConstraint()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    private func decodeExpositionUniverselle() {
        do {
            expositionUniverselle = try JSONDecoder().decode(ExpositionUniverselle.self, from: JSONFile.exposition.name)
        } catch {
            print(error)
        }
    }
    
    private func updateLabel() {
        navigationItem.title = "메인"
        titleLabel.text = expositionUniverselle?.titleForLabel
        visitorsLabel.text = expositionUniverselle?.visitorsForLabel
        locationLabel.text = expositionUniverselle?.locationForLabel
        durationLabel.text = expositionUniverselle?.durationForLabel
        totalDescriptionLabel.text = expositionUniverselle?.totalDescription
    }
    
    private func configureView() {
        addArrangedSubviews(to: buttonStackView, elements: [leftItemImage,
                                                            expositionItemListButton,
                                                            rightItemImage
                                                           ])
        addArrangedSubviews(to: contentStackView, elements: [titleLabel,
                                                             posterImage,
                                                             visitorsLabel,
                                                             locationLabel,
                                                             durationLabel,
                                                             totalDescriptionLabel,
                                                             buttonStackView])
        expositionUniverselleScrollView.addSubview(contentStackView)
        view.addSubview(expositionUniverselleScrollView)
    }
    
    private func addArrangedSubviews(to superview: UIStackView, elements subviews: [AnyObject]) {
        subviews.forEach {
            guard let subview = $0 as? UIView else { return }
            superview.addArrangedSubview(subview)
        }
    }
    
    private func configureConstraint() {
        configureExpositionUniverselleScrollViewConstraint()
        configureContentStackViewConstraint()
    }
    
    private func configureExpositionUniverselleScrollViewConstraint() {
        NSLayoutConstraint.activate([
            expositionUniverselleScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            expositionUniverselleScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            expositionUniverselleScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            expositionUniverselleScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func configureContentStackViewConstraint() {
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: expositionUniverselleScrollView.topAnchor),
            contentStackView.bottomAnchor.constraint(equalTo: expositionUniverselleScrollView.bottomAnchor),
            contentStackView.widthAnchor.constraint(equalTo: expositionUniverselleScrollView.widthAnchor)
        ])
    }
    
    @objc private func touchUpExpositionItemListButton() {
        let expositionItemListViewController: ExpositionItemListViewController = ExpositionItemListViewController()
        navigationController?.pushViewController(expositionItemListViewController, animated: true)
    }
}
