//
//  AnotherVC.swift
//  task1
//
//  Created by Паша Клопот on 3/13/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import UIKit

class AnotherVC: UIViewController {
    
    var collectionDirectImage: UIImageView!
    var computerToMobile: UIImageView!
    var instructionComputerToMobile: UILabel!
    var mobileToQR: UIImageView!
    var instructionMobileToQR: UILabel!
    var okeyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        collectionDirectImage = UIImageView(image: UIImage(named: "firstImage"))
        view.addSubview(collectionDirectImage)

        computerToMobile = UIImageView(image: UIImage(named: "secondImage"))
        view.addSubview(computerToMobile)

        let textForInstructionComputerToMobile = "Открыв программу на компьютере, зайдите в Настройки > Устройства и нажмите \"Добавить устройство\""
        let firstBoldPart = "Настройки"
        let secondBoldPart = "Устройства"
        let thirdBoldPart = "\"Добавить устройство\""
        instructionComputerToMobile = UILabel()
        instructionComputerToMobile.attributedText = attributedText(withString: textForInstructionComputerToMobile, boldString: firstBoldPart, secondBold: secondBoldPart, third: thirdBoldPart, font: UIFont.systemFont(ofSize: 15, weight: .regular))
        instructionComputerToMobile.numberOfLines = 3
        instructionComputerToMobile.textAlignment = .left
        instructionComputerToMobile.textColor = UIColor.black.withAlphaComponent(0.9)
        view.addSubview(instructionComputerToMobile)

        mobileToQR = UIImageView(image: UIImage(named: "lastImage"))
        view.addSubview(mobileToQR)
        
        let textInstructionMobileToQR = "Система попросит доступ к камере, это важно для сканирования кода активации"
        let mobileToQR = UIFont.systemFont(ofSize: 15, weight: .regular)
        let attributesMobileToQR: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: mobileToQR]
        let resultStringForMobileToQR = NSAttributedString(string: textInstructionMobileToQR,
                                                                   attributes: attributesMobileToQR)
        instructionMobileToQR = UILabel()
        instructionMobileToQR.attributedText = resultStringForMobileToQR
        instructionMobileToQR.numberOfLines = 2
        instructionMobileToQR.textAlignment = .center
        instructionMobileToQR.textColor = UIColor.black.withAlphaComponent(0.9)
        view.addSubview(instructionMobileToQR)
        
        
        let titleOkeyButton = "Хорошо"
        let okeyButtonProperties = UIFont.systemFont(ofSize: 17, weight: .medium)
        let attributesOkeyButton: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: okeyButtonProperties]
        let resultStringForOkeyButton = NSAttributedString(string: titleOkeyButton,
                                                                 attributes: attributesOkeyButton)
        okeyButton = UIButton()
        okeyButton.setAttributedTitle(resultStringForOkeyButton, for: .normal)
        okeyButton.setTitleColor(.black, for: .normal)
        okeyButton.layer.cornerRadius = 7.0
        okeyButton.layer.borderWidth = 0.75
        okeyButton.layer.borderColor = UIColor.black.cgColor.copy(alpha: 0.5)
        view.addSubview(okeyButton)
        
        constraintsInit()
    }
    
    
    func constraintsInit() {
        collectionDirectImage.translatesAutoresizingMaskIntoConstraints = false
        computerToMobile.translatesAutoresizingMaskIntoConstraints = false
        instructionComputerToMobile.translatesAutoresizingMaskIntoConstraints = false
        mobileToQR.translatesAutoresizingMaskIntoConstraints = false
        instructionMobileToQR.translatesAutoresizingMaskIntoConstraints = false
        okeyButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate ([
                   collectionDirectImage!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   collectionDirectImage!.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -167),
                   collectionDirectImage!.widthAnchor.constraint(equalToConstant: 260),
                   collectionDirectImage!.heightAnchor.constraint(equalToConstant: 140),
                   
                   computerToMobile!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   computerToMobile!.topAnchor.constraint(equalTo: collectionDirectImage.bottomAnchor, constant: 60),
                   computerToMobile!.widthAnchor.constraint(equalToConstant: 100),
                   computerToMobile!.heightAnchor.constraint(equalToConstant: 28),
        
                   instructionComputerToMobile!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   instructionComputerToMobile!.topAnchor.constraint(equalTo: computerToMobile.bottomAnchor, constant: 10),
                   instructionComputerToMobile!.widthAnchor.constraint(equalToConstant: 260),
                   instructionComputerToMobile!.heightAnchor.constraint(equalToConstant: 60),
                   
                   mobileToQR!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   mobileToQR!.topAnchor.constraint(equalTo: instructionComputerToMobile.bottomAnchor, constant: 65),
                   mobileToQR!.widthAnchor.constraint(equalToConstant: 110),
                   mobileToQR!.heightAnchor.constraint(equalToConstant: 28),
                   
                   instructionMobileToQR!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   instructionMobileToQR!.topAnchor.constraint(equalTo: mobileToQR.bottomAnchor, constant: 10),
                   instructionMobileToQR!.widthAnchor.constraint(equalToConstant: 300),
                   instructionMobileToQR!.heightAnchor.constraint(equalToConstant: 40),
                   
                   okeyButton!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   okeyButton!.topAnchor.constraint(equalTo: instructionMobileToQR.bottomAnchor, constant: 45),
                   okeyButton!.widthAnchor.constraint(equalToConstant: 275),
                   okeyButton!.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    func attributedText(withString string: String, boldString: String, secondBold: String, third: String, font: UIFont) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: string,
                                                     attributes: [NSAttributedString.Key.font: font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
        let range = (string as NSString).range(of: boldString)
        attributedString.addAttributes(boldFontAttribute, range: range)
        let anotherRange = (string as NSString).range(of: secondBold)
        attributedString.addAttributes(boldFontAttribute, range: anotherRange)
        let lastRange = (string as NSString).range(of: third)
        attributedString.addAttributes(boldFontAttribute, range: lastRange)
        return attributedString
    }
}
