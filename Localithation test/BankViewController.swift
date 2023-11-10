//
//  BankView.swift
//  Localithation test
//
//  Created by Софья Норина on 2.11.2023.
//

import UIKit
import SnapKit

class BankViewController: UIViewController {
    
    let heightCardBackground: CGFloat = 306
    
    private let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "cardBackground")
        view.layer.cornerRadius = 15
        return view
    }()
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "ДОБРО ПОЖАЛОВАТЬ"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
        setConstraints()
        createImage()
        
    }
    
    func createImage() {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "imageCard")
        cardView.addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom).offset(60)
            make.width.equalToSuperview()
            make.height.equalTo(151)
        }
        
    }
    func addViews() {
        view.addSubview(cardView)
        cardView.addSubview(mainLabel)
    }
    
    func setConstraints() {
        cardView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview().inset(100)
            make.height.equalTo(heightCardBackground)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(35)
            make.width.equalTo(cardView.snp.width).multipliedBy(0.8)
            
        }
    }
}
