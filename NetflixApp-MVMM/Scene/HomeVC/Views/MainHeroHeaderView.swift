//
//  MainHeroHeaderView.swift
//  NetflixApp-MVMM
//
//  Created by Enes Sancar on 7.02.2023.
//

import UIKit

class MainHeroHeaderView: UIView {
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func createUI() {
         
        lazy var heroImageView = UIImageView()
        heroImageView.image = UIImage(named: "theBoldType")
        addSubview(heroImageView)
        heroImageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(screenHeight * 0.35)
        }
        addGradient()
        
        lazy var playButton = UIButton()
        playButton.setTitle("Play", for: .normal)
        playButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.borderWidth = 1
        playButton.layer.cornerRadius = 10
        addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(screenHeight * 0.3)
            make.left.equalToSuperview().offset(screenWidth * 0.2)
            make.width.equalTo(100)
        }
        
        lazy var downloadButtpn = UIButton()
        downloadButtpn.setTitle("Download", for: .normal)
        downloadButtpn.layer.borderColor = UIColor.white.cgColor
        downloadButtpn.layer.borderWidth = 1
        downloadButtpn.layer.cornerRadius = 10
        addSubview(downloadButtpn)
        downloadButtpn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(screenHeight * 0.3)
            make.right.equalToSuperview().offset(screenWidth * -0.2)
            make.width.equalTo(100)
        }
    }
    
    private func addGradient() {
        lazy var gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        layer.addSublayer(gradientLayer)
    }
}
