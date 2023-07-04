//
//  ExpositionUniverselleView.swift
//  Expo1900
//
//  Created by Daehoon Lee on 2023/07/04.
//

import UIKit

protocol Tapable {
    func touchUpExpositionItemListButton()
}

class ExpositionUniverselleView: UIView {
    var delegate: Tapable?
    
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
        let button: UIButton = UIButton(type: .custom)
        let action: UIAction = UIAction(handler: { _ in self.delegate?.touchUpExpositionItemListButton() })
        button.setTitle("한국의 출품작 보러가기", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addAction(action, for: .touchUpInside)
        
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureRootView()
        configureConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateLabel(with data: ExpositionUniverselle) {
        titleLabel.text = data.titleForLabel
        visitorsLabel.text = data.visitorsForLabel
        locationLabel.text = data.locationForLabel
        durationLabel.text = data.durationForLabel
        totalDescriptionLabel.text = data.totalDescription
    }
    
    private func configureRootView() {
        setRootViewBackground()
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
        addSubviews()
    }
    
    private func setRootViewBackground() {
        backgroundColor = .systemBackground
    }
    
    private func addArrangedSubviews(to superview: UIStackView, elements subviews: [UIView]) {
        subviews.forEach {
            superview.addArrangedSubview($0)
        }
    }
    
    private func addSubviews() {
        expositionUniverselleScrollView.addSubview(contentStackView)
        addSubview(expositionUniverselleScrollView)
    }
    
    private func configureConstraint() {
        configureExpositionUniverselleScrollViewConstraint()
        configureContentStackViewConstraint()
    }
    
    private func configureExpositionUniverselleScrollViewConstraint() {
        NSLayoutConstraint.activate([
            expositionUniverselleScrollView.topAnchor.constraint(equalTo: topAnchor),
            expositionUniverselleScrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            expositionUniverselleScrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            expositionUniverselleScrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func configureContentStackViewConstraint() {
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: expositionUniverselleScrollView.topAnchor),
            contentStackView.bottomAnchor.constraint(equalTo: expositionUniverselleScrollView.bottomAnchor),
            contentStackView.widthAnchor.constraint(equalTo: expositionUniverselleScrollView.widthAnchor)
        ])
    }
}
