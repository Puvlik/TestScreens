//
//  ViewController.swift
//  task1
//
//  Created by Паша Клопот on 3/10/20.
//  Copyright © 2020 Паша Клопот. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionDirectImage: UIImageView!
    var isAccountExistButton: UIButton!
    var startAuthorizing: UIButton!
    var iNeedToKnowYou: UILabel!
    var leaveRequestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        collectionDirectImage = UIImageView(image: UIImage(named: "firstImage"))
        view.addSubview(collectionDirectImage)
        
        let titleForExistAccount = "Уже есть аккаунт?"
        let existAccountProperties = UIFont.systemFont(ofSize: 17, weight: .medium)
        let attributesExistAccount: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: existAccountProperties]
        let resultStringForExistAccountButton = NSAttributedString(string: titleForExistAccount, attributes: attributesExistAccount)
        isAccountExistButton = UIButton()
        isAccountExistButton.setAttributedTitle(resultStringForExistAccountButton, for: .normal)
        isAccountExistButton.setTitleColor(.black, for: .normal)
        view.addSubview(isAccountExistButton)
        
        let titleStartAuthorizing = "Начать авторизацию"
        let startAuthorizingProperties = UIFont.systemFont(ofSize: 17, weight: .medium)
        let attributesStartAuthorizing: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: startAuthorizingProperties]
        let resultStringForStartAuthorizing = NSAttributedString(string: titleStartAuthorizing,
                                                                 attributes: attributesStartAuthorizing)
        startAuthorizing = UIButton()
        startAuthorizing.setAttributedTitle(resultStringForStartAuthorizing, for: .normal)
        startAuthorizing.setTitleColor(.black, for: .normal)
        startAuthorizing.layer.cornerRadius = 7.0
        startAuthorizing.layer.borderWidth = 0.75
        startAuthorizing.layer.borderColor = UIColor.black.cgColor.copy(alpha: 0.5)
        view.addSubview(startAuthorizing)
        
        let textForUnknownUser = """
                                 Еще нет аккаунта?
                                 Нам нужно познакомиться
                                 """
        let unknownUserLabelProperties = UIFont.systemFont(ofSize: 13, weight: .light)
        let attributesUnknownUserLabel: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: unknownUserLabelProperties]
        let resultStringForUnknownUserLabel = NSAttributedString(string: textForUnknownUser,
                                                                 attributes: attributesUnknownUserLabel)
        iNeedToKnowYou = UILabel()
        iNeedToKnowYou.attributedText = resultStringForUnknownUserLabel
        iNeedToKnowYou.numberOfLines = 2
        iNeedToKnowYou.textAlignment = .center
        iNeedToKnowYou.textColor = .gray
        view.addSubview(iNeedToKnowYou)
        
        let titleLeaveRequest = "Оставить заявку"
        let leaveRequestProperties = UIFont.systemFont(ofSize: 17, weight: .semibold)
        let attributesLeaveRequest: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: leaveRequestProperties]
        let resultStringForLeaveRequestButton = NSAttributedString(string: titleLeaveRequest,
                                                                   attributes: attributesLeaveRequest)
        leaveRequestButton = UIButton(type: .system)
        leaveRequestButton.setAttributedTitle(resultStringForLeaveRequestButton, for: .normal)
        leaveRequestButton.setTitleColor(.black, for: .normal)
        view.addSubview(leaveRequestButton)
        
        constraintsInit()
    }
    
    func constraintsInit() {
        collectionDirectImage.translatesAutoresizingMaskIntoConstraints = false
        isAccountExistButton.translatesAutoresizingMaskIntoConstraints = false
        startAuthorizing.translatesAutoresizingMaskIntoConstraints = false
        iNeedToKnowYou.translatesAutoresizingMaskIntoConstraints = false
        leaveRequestButton.translatesAutoresizingMaskIntoConstraints = false
        
          NSLayoutConstraint.activate ([
            collectionDirectImage!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            collectionDirectImage!.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -167),
            collectionDirectImage!.widthAnchor.constraint(equalToConstant: 260),
            collectionDirectImage!.heightAnchor.constraint(equalToConstant: 140),
            
            isAccountExistButton!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            isAccountExistButton!.topAnchor.constraint(equalTo: collectionDirectImage.bottomAnchor, constant: 88),
            isAccountExistButton!.widthAnchor.constraint(equalToConstant: 165),
            isAccountExistButton!.heightAnchor.constraint(equalToConstant: 25),
            
            startAuthorizing!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startAuthorizing!.topAnchor.constraint(equalTo: isAccountExistButton.bottomAnchor, constant: 88),
            startAuthorizing!.widthAnchor.constraint(equalToConstant: 275),
            startAuthorizing!.heightAnchor.constraint(equalToConstant: 40),
            
            iNeedToKnowYou!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iNeedToKnowYou!.topAnchor.constraint(equalTo: startAuthorizing.bottomAnchor, constant: 80),
            iNeedToKnowYou!.widthAnchor.constraint(equalToConstant: 170),
            iNeedToKnowYou!.heightAnchor.constraint(equalToConstant: 40),
            
            leaveRequestButton!.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            leaveRequestButton!.topAnchor.constraint(equalTo: iNeedToKnowYou.bottomAnchor, constant: 10),
            leaveRequestButton!.widthAnchor.constraint(equalToConstant: 150),
            leaveRequestButton!.heightAnchor.constraint(equalToConstant: 30),
          ])
    }
}

