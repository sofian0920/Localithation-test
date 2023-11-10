//
//  ViewController.swift
//  Localithation test
//
//  Created by Софья Норина on 2.11.2023.
//

import UIKit
import SnapKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createLabel()
        addImage()
    }
    let label = UILabel()
    func addImage() {
        let imageView = UIImageView()
        imageView.image = UIImage(named:"\(NSLocalizedString("img", comment: "en"))")
        view.addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(label.snp.bottom).offset(20)
            make.width.equalTo(view.snp.width).multipliedBy(0.18)
            make.height.equalTo(view.snp.height).multipliedBy(0.075)
        }
    }

    func createLabel() {
        let localizedText = NSLocalizedString("GOOD_MORNING", comment: "Good Morning")
        label.text = localizedText
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }

}

